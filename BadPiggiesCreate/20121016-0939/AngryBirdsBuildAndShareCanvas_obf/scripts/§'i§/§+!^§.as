package §'i§
{
   import §62§.§0!t§;
   import §=!#§.§2"-§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §+!^§ implements §8p§
   {
       
      
      private var §6!^§:§'!;§;
      
      public function §+!^§(param1:§'!;§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            do
            {
               this.§6!^§ = param1;
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public static function §@&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §2"-§.§@&§(param1);
         }
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6!^§.§+"2§.addEventListener(§0!t§.§<!I§,this.§^!s§);
         }
      }
      
      protected function §^!s§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!this.§6!^§.§+"2§.§-W§())
            {
               this.goToCastleView();
               if(_loc2_)
               {
                  addr45:
               }
               else
               {
                  addr70:
               }
               return;
            }
            if(!(_loc3_ && param1))
            {
               this.goToBirdView();
            }
            §§goto(addr70);
         }
         §§goto(addr45);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.camera.§7!G§();
         }
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §2"-§
      {
         return this.§6!^§.§8#§.camera as §2"-§;
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.camera.goToCastleView();
         }
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.camera.goToBirdView();
         }
      }
      
      public function §!"1§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != null)
            {
               if(!(_loc3_ && this))
               {
                  this.camera.§!"1§(param1);
               }
            }
         }
      }
   }
}
