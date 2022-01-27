package §=",§
{
   import §#!$§.§2,§;
   import §'+§.§="B§;
   import §1G§.§8!a§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §5#!§ extends EventDispatcher
   {
      
      public static const §-"#§:int = 1;
       
      
      protected var §,r§:MovieClip;
      
      protected var §8-§:§="B§;
      
      protected var §[!Y§:§8!a§;
      
      protected var §3!P§:Rectangle;
      
      protected var §<"z§:Number;
      
      protected var §5#0§:Number;
      
      protected var §[!O§:§-!`§;
      
      public function §5#!§(param1:int, param2:MovieClip, param3:§="B§, param4:§8!a§, param5:Rectangle = null)
      {
         super();
         this.§8-§ = param3;
         this.§[!Y§ = param4;
         this.§3!P§ = param5;
         this.§[!8§(param1,param2);
      }
      
      protected function §[!8§(param1:int, param2:MovieClip) : void
      {
         this.§,r§ = param2.addChild(new MovieClip()) as MovieClip;
         if(param1 < param2.numChildren)
         {
            param2.setChildIndex(this.§,r§,param1);
         }
      }
      
      protected function §'#§(param1:§-!`§) : void
      {
         this.§`5§();
         this.§[!O§ = param1;
         var _loc2_:§>#-§ = this.§[!O§.§!!1§;
         _loc2_.open(this.§,r§,this.§8-§,this.§[!Y§,true);
         this.setViewSize(this.§<"z§,this.§5#0§);
         _loc2_.addEventListener(§2,§.§#"J§,this.onTransitionStart);
         _loc2_.addEventListener(§2,§.§;"N§,this.onTransitionMiddle);
         _loc2_.addEventListener(§2,§.§!"w§,this.§5J§);
      }
      
      protected function §`5§() : void
      {
         var _loc1_:§>#-§ = null;
         if(this.§[!O§)
         {
            _loc1_ = this.§[!O§.§!!1§;
            _loc1_.removeEventListener(§2,§.§#"J§,this.onTransitionStart);
            _loc1_.removeEventListener(§2,§.§;"N§,this.onTransitionMiddle);
            _loc1_.removeEventListener(§2,§.§!"w§,this.§5J§);
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§[!O§ = null;
      }
      
      protected function onTransitionStart(param1:§2,§) : void
      {
         dispatchEvent(new §2,§(param1.type,param1.§;"B§));
      }
      
      protected function onTransitionMiddle(param1:§2,§) : void
      {
         dispatchEvent(new §2,§(param1.type,param1.§;"B§));
      }
      
      protected function §5J§(param1:§2,§) : void
      {
         if(this.§[!O§ && !this.§[!O§.§7!+§)
         {
            this.§`5§();
         }
         dispatchEvent(new §2,§(param1.type,param1.§;"B§));
      }
      
      public function §'!8§() : void
      {
         this.§`5§();
      }
      
      public function setTransition(param1:§>#-§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§[!O§ && this.§[!O§.§!!1§.isTransitioning)
         {
            return;
         }
         if(param1)
         {
            if(!(this.§[!O§ && this.§[!O§.§7!+§ && !param3))
            {
               this.§'#§(new §-!`§(param1,param2));
            }
         }
      }
      
      public function showTransition(param1:String, param2:Boolean = false, param3:§"!a§ = null) : void
      {
         var _loc4_:§>#-§ = null;
         if(this.§[!O§ && this.§[!O§.§!!1§.isTransitioning)
         {
            return;
         }
         if(param1)
         {
            if(this.§[!O§)
            {
               (_loc4_ = this.§[!O§.§!!1§).§&Y§ = param3;
               _loc4_.showTransition(param1,param2);
            }
         }
         else if(this.§[!O§)
         {
            (_loc4_ = this.§[!O§.§!!1§).§&Y§ = param3;
            _loc4_.showTransition("",param2);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§>#-§ = null;
         this.§<"z§ = param1;
         this.§5#0§ = param2;
         if(this.§[!O§)
         {
            _loc3_ = this.§[!O§.§!!1§;
            _loc3_.setViewSize(this.§<"z§ + this.§3!P§.width,this.§5#0§ + this.§3!P§.height);
         }
      }
      
      public function §^j§() : Boolean
      {
         if(this.§[!O§)
         {
            return true;
         }
         return false;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§[!O§)
         {
            return this.§[!O§.§!!1§.isTransitioning;
         }
         return false;
      }
      
      public function §5"l§() : Boolean
      {
         if(this.§[!O§)
         {
            return this.§[!O§.§7!+§;
         }
         return false;
      }
      
      public function §38§() : String
      {
         if(this.§[!O§)
         {
            return this.§[!O§.§!!1§.id;
         }
         return "";
      }
   }
}
