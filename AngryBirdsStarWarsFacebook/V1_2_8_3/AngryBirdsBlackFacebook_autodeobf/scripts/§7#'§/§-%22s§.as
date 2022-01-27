package §7#'§
{
   import §&!j§.§5#+§;
   import §7!H§.§5k§;
   import §9&§.§]!`§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §-"s§ extends EventDispatcher
   {
      
      public static const §"!e§:int = 1;
       
      
      protected var §[#,§:MovieClip;
      
      protected var §-1§:§5#+§;
      
      protected var §4!i§:§]!`§;
      
      protected var §`!-§:Rectangle;
      
      protected var §5"[§:Number;
      
      protected var §%"8§:Number;
      
      protected var §!P§:§80§;
      
      public function §-"s§(param1:int, param2:MovieClip, param3:§5#+§, param4:§]!`§, param5:Rectangle = null)
      {
         super();
         this.§-1§ = param3;
         this.§4!i§ = param4;
         this.§`!-§ = param5;
         this.§4!s§(param1,param2);
      }
      
      protected function §4!s§(param1:int, param2:MovieClip) : void
      {
         this.§[#,§ = param2.addChild(new MovieClip()) as MovieClip;
         if(param1 < param2.numChildren)
         {
            param2.setChildIndex(this.§[#,§,param1);
         }
      }
      
      protected function §^"9§(param1:§80§) : void
      {
         this.§>"?§();
         this.§!P§ = param1;
         var _loc2_:§?e§ = this.§!P§.§%n§;
         _loc2_.open(this.§[#,§,this.§-1§,this.§4!i§,true);
         this.setViewSize(this.§5"[§,this.§%"8§);
         _loc2_.addEventListener(§5k§.§3!&§,this.onTransitionStart);
         _loc2_.addEventListener(§5k§.§"!l§,this.onTransitionMiddle);
         _loc2_.addEventListener(§5k§.§7"v§,this.§ !i§);
      }
      
      protected function §>"?§() : void
      {
         var _loc1_:§?e§ = null;
         if(this.§!P§)
         {
            _loc1_ = this.§!P§.§%n§;
            _loc1_.removeEventListener(§5k§.§3!&§,this.onTransitionStart);
            _loc1_.removeEventListener(§5k§.§"!l§,this.onTransitionMiddle);
            _loc1_.removeEventListener(§5k§.§7"v§,this.§ !i§);
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§!P§ = null;
      }
      
      protected function onTransitionStart(param1:§5k§) : void
      {
         dispatchEvent(new §5k§(param1.type,param1.§'!f§));
      }
      
      protected function onTransitionMiddle(param1:§5k§) : void
      {
         dispatchEvent(new §5k§(param1.type,param1.§'!f§));
      }
      
      protected function § !i§(param1:§5k§) : void
      {
         if(this.§!P§ && !this.§!P§.§["y§)
         {
            this.§>"?§();
         }
         dispatchEvent(new §5k§(param1.type,param1.§'!f§));
      }
      
      public function §8!v§() : void
      {
         this.§>"?§();
      }
      
      public function setTransition(param1:§?e§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§!P§ && this.§!P§.§%n§.isTransitioning)
         {
            return;
         }
         if(param1)
         {
            if(!(this.§!P§ && this.§!P§.§["y§ && !param3))
            {
               this.§^"9§(new §80§(param1,param2));
            }
         }
      }
      
      public function showTransition(param1:String, param2:Boolean = false, param3:§ !8§ = null) : void
      {
         var _loc4_:§?e§ = null;
         if(this.§!P§ && this.§!P§.§%n§.isTransitioning)
         {
            return;
         }
         if(param1)
         {
            if(this.§!P§)
            {
               (_loc4_ = this.§!P§.§%n§).§+!T§ = param3;
               _loc4_.showTransition(param1,param2);
            }
         }
         else if(this.§!P§)
         {
            (_loc4_ = this.§!P§.§%n§).§+!T§ = param3;
            _loc4_.showTransition("",param2);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§?e§ = null;
         this.§5"[§ = param1;
         this.§%"8§ = param2;
         if(this.§!P§)
         {
            _loc3_ = this.§!P§.§%n§;
            _loc3_.setViewSize(this.§5"[§ + this.§`!-§.width,this.§%"8§ + this.§`!-§.height);
         }
      }
      
      public function §-$§() : Boolean
      {
         if(this.§!P§)
         {
            return true;
         }
         return false;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§!P§)
         {
            return this.§!P§.§%n§.isTransitioning;
         }
         return false;
      }
      
      public function §>"E§() : Boolean
      {
         if(this.§!P§)
         {
            return this.§!P§.§["y§;
         }
         return false;
      }
      
      public function §?"%§() : String
      {
         if(this.§!P§)
         {
            return this.§!P§.§%n§.id;
         }
         return "";
      }
   }
}
