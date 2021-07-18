package §-#a§
{
   import §0!=§.§]"3§;
   import §4#!§.§ t§;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §`"H§ extends EventDispatcher
   {
      
      public static const §""7§:int = 1;
       
      
      protected var §^c§:MovieClip;
      
      protected var §^"N§:§5"H§;
      
      protected var §;D§:§]"3§;
      
      protected var §;!O§:Rectangle;
      
      protected var §+"p§:Number;
      
      protected var §?!"§:Number;
      
      protected var §9#<§:§6,§;
      
      public function §`"H§(param1:int, param2:MovieClip, param3:§5"H§, param4:§]"3§, param5:Rectangle = null)
      {
         super();
         this.§^"N§ = param3;
         this.§;D§ = param4;
         this.§;!O§ = param5;
         this.§=#T§(param1,param2);
      }
      
      protected function §=#T§(param1:int, param2:MovieClip) : void
      {
         this.§^c§ = param2.addChild(new MovieClip()) as MovieClip;
         if(param1 < param2.numChildren)
         {
            param2.setChildIndex(this.§^c§,param1);
         }
      }
      
      protected function §###§(param1:§6,§) : void
      {
         this.§6#M§();
         this.§9#<§ = param1;
         var _loc2_:§0`§ = this.§9#<§.§,!+§;
         _loc2_.open(this.§^c§,this.§^"N§,this.§;D§,true);
         this.setViewSize(this.§+"p§,this.§?!"§);
         _loc2_.addEventListener(§ t§.§]"]§,this.onTransitionStart);
         _loc2_.addEventListener(§ t§.§4o§,this.onTransitionMiddle);
         _loc2_.addEventListener(§ t§.END,this.§!"A§);
      }
      
      protected function §6#M§() : void
      {
         var _loc1_:§0`§ = null;
         if(this.§9#<§)
         {
            _loc1_ = this.§9#<§.§,!+§;
            _loc1_.removeEventListener(§ t§.§]"]§,this.onTransitionStart);
            _loc1_.removeEventListener(§ t§.§4o§,this.onTransitionMiddle);
            _loc1_.removeEventListener(§ t§.END,this.§!"A§);
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§9#<§ = null;
      }
      
      protected function onTransitionStart(param1:§ t§) : void
      {
         dispatchEvent(new § t§(param1.type,param1.§;"=§));
      }
      
      protected function onTransitionMiddle(param1:§ t§) : void
      {
         dispatchEvent(new § t§(param1.type,param1.§;"=§));
      }
      
      protected function §!"A§(param1:§ t§) : void
      {
         if(this.§9#<§ && !this.§9#<§.§7t§)
         {
            this.§6#M§();
         }
         dispatchEvent(new § t§(param1.type,param1.§;"=§));
      }
      
      public function §="M§() : void
      {
         this.§6#M§();
      }
      
      public function setTransition(param1:§0`§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§9#<§ && this.§9#<§.§,!+§.isTransitioning)
         {
            return;
         }
         if(param1)
         {
            if(!(this.§9#<§ && this.§9#<§.§7t§ && !param3))
            {
               this.§###§(new §6,§(param1,param2));
            }
         }
      }
      
      public function showTransition(param1:String, param2:Boolean = false, param3:§>,§ = null) : void
      {
         var _loc4_:§0`§ = null;
         if(this.§9#<§ && this.§9#<§.§,!+§.isTransitioning)
         {
            return;
         }
         if(param1)
         {
            if(this.§9#<§)
            {
               (_loc4_ = this.§9#<§.§,!+§).§=#1§ = param3;
               _loc4_.showTransition(param1,param2);
            }
         }
         else if(this.§9#<§)
         {
            (_loc4_ = this.§9#<§.§,!+§).§=#1§ = param3;
            _loc4_.showTransition("",param2);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§0`§ = null;
         this.§+"p§ = param1;
         this.§?!"§ = param2;
         if(this.§9#<§)
         {
            _loc3_ = this.§9#<§.§,!+§;
            _loc3_.setViewSize(this.§+"p§ + this.§;!O§.width,this.§?!"§ + this.§;!O§.height);
         }
      }
      
      public function §2"r§() : Boolean
      {
         if(this.§9#<§)
         {
            return true;
         }
         return false;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§9#<§)
         {
            return this.§9#<§.§,!+§.isTransitioning;
         }
         return false;
      }
      
      public function §1!A§() : Boolean
      {
         if(this.§9#<§)
         {
            return this.§9#<§.§7t§;
         }
         return false;
      }
      
      public function §[3§() : String
      {
         if(this.§9#<§)
         {
            return this.§9#<§.§,!+§.id;
         }
         return "";
      }
   }
}
