{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</main>

	{* Sidebars *}
	{if empty($isFullWidth)}
		{call_hook|assign:"sidebarCode" name="Templates::Common::Sidebar"}
		{if $sidebarCode}
			<aside id="sidebar" class="pkp_structure_sidebar left col-xs-12 col-sm-2 col-md-4" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</aside><!-- pkp_sidebar.left -->
		{/if}
	{/if}
  </div><!-- pkp_structure_content -->

  <footer class="footer" role="contentinfo">

  	<div class="container">

      <div class="row">
             <div class="col-md-2">

<img id="footer-img" src="{$baseUrl}/plugins/themes/mjlis/images/MJLIS_White.png" alt="MJLIS" class="img-responsive" style="margin-top: 10px;margin-bottom: 10px;">
        </div>
             <div class="col-md-2">
     <h4>SITEMAP</h4>

     <a class="footer-link" href="https://ejournal.um.edu.my/index.php/MJLIS/announcement">Announcements</a><br>
     <a class="footer-link" href="https://ejournal.um.edu.my/index.php/MJLIS/issue/current">Current</a><br>
     <a class="footer-link" href="https://ejournal.um.edu.my/index.php/MJLIS/issue/archive">Archives</a><br>
     <a class="footer-link" href="https://ejournal.um.edu.my/index.php/MJLIS/about">About the Journal</a><br>
     <a class="footer-link" href="https://ejournal.um.edu.my/index.php/MJLIS/about/editorialTeam">Editorial</a><br>
     <a class="footer-link" href="https://ejournal.um.edu.my/index.php/MJLIS/about/submissions">Submission Guidelines</a>

        </div>
    		{if $pageFooter}
        <div class="col-md-5">
          <h4>CONTACT</h4>
          {$pageFooter}

        </div>
    		{/if}

                <div class="col-md-3 text-center" role="complementary" aria-label="{translate|escape key="about.aboutThisPublishingSystem"}">
                
          <a href="{url page="about" op="aboutThisPublishingSystem"}">
            <img class="img-responsive" alt="{translate key=$packageKey}" src="{$baseUrl}/plugins/themes/mjlis/images/ojs_brand_white.png">
          </a>
          <br>
          <a href="{$pkpLink}">
            <img class="img-responsive" alt="{translate key="common.publicKnowledgeProject"}" src="{$baseUrl}/plugins/themes/mjlis/images/pkp_brand_white.png">
          </a>
        </div>

      </div> <!-- .row -->
  	</div><!-- .container -->
  </footer>
</div><!-- pkp_structure_page -->

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
