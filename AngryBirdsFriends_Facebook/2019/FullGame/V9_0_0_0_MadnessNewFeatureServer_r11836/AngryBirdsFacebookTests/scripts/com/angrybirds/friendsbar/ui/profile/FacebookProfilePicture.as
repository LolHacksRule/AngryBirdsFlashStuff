package com.angrybirds.friendsbar.ui.profile
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class FacebookProfilePicture extends ImageLoaderProfilePicture
   {
      
      protected static var sLoadedPolicyDomains:Array = [];
      
      protected static var sInstances:Array = [];
      
      protected static var sIsVisible:Boolean = true;
      
      public static const SMALL:String = "small";
      
      public static const SQUARE:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const LARGE:String = "large";
      
      {
         loadPolicyDomain("scontent.xx.fbcdn.net",true);
         loadPolicyDomain("graph.facebook.com",true);
      }
      
      public function FacebookProfilePicture(userId:String, useHttps:Boolean = false, imageSize:String = "square", imageURL:String = "")
      {
         super();
         this.init(userId,useHttps,imageSize,imageURL);
      }
      
      protected static function loadPolicyDomain(domain:String, secure:Boolean = false) : void
      {
         if(sLoadedPolicyDomains.indexOf(domain) != -1)
         {
            return;
         }
         sLoadedPolicyDomains.push(domain);
         Security.loadPolicyFile((!!secure ? "https://" : "http://") + domain + "/crossdomain.xml");
      }
      
      public static function setAllVisibility(visible:Boolean) : void
      {
         var facebookProfilePicture:FacebookProfilePicture = null;
         if(sIsVisible == visible)
         {
            return;
         }
         sIsVisible = visible;
         for each(facebookProfilePicture in sInstances)
         {
            if(visible)
            {
               if(!facebookProfilePicture.loader.parent)
               {
                  facebookProfilePicture.addChild(facebookProfilePicture.loader);
               }
            }
            else if(facebookProfilePicture.loader && facebookProfilePicture.loader.parent == facebookProfilePicture)
            {
               facebookProfilePicture.removeChild(facebookProfilePicture.loader);
            }
         }
      }
      
      protected function init(userId:String, useHttps:Boolean, imageSize:String, imageURL:String) : void
      {
         var imageMeasures:String = null;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         if(imageURL && imageURL != "")
         {
            mUrl = imageURL;
         }
         else
         {
            switch(imageSize)
            {
               case SMALL:
               case SQUARE:
                  imageMeasures = "width=50&height=50";
                  break;
               case NORMAL:
                  imageMeasures = "width=100&height=100";
                  break;
               case LARGE:
                  imageMeasures = "width=200&height=200";
                  break;
               default:
                  imageMeasures = "width=50&height=50";
            }
            mUrl = (!!useHttps ? "https://" : "http://") + "graph.facebook.com/" + AngryBirdsFacebook.FB_API_VERSION + "/" + userId + "/picture?" + imageMeasures;
         }
         load();
      }
      
      private function onAddedToStage(e:Event) : void
      {
         if(sInstances.indexOf(this) == -1)
         {
            sInstances.push(this);
         }
      }
      
      private function onRemovedFromStage(e:Event) : void
      {
         if(sInstances.indexOf(this) != -1)
         {
            sInstances.splice(sInstances.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return sIsVisible;
      }
   }
}
