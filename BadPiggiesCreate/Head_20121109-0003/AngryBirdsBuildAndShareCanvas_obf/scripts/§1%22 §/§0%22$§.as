package §1" §
{
   import §"_§.§!"8§;
   import §,!g§.§>7§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §0"$§ implements §4!x§
   {
       
      
      private var §9J§:§#!j§;
      
      public function §0"$§(param1:§#!j§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            do
            {
               this.§9J§ = param1;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public static function §];§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §>7§.§];§(param1);
         }
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9J§.§<!_§.addEventListener(§!"8§.§'!K§,this.§=!z§);
         }
      }
      
      protected function §=!z§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§9J§.§<!_§.§5!<§())
            {
               this.goToCastleView();
               if(!_loc2_)
               {
                  addr46:
               }
               else
               {
                  addr66:
               }
               return;
            }
            if(_loc3_)
            {
               this.goToBirdView();
            }
            §§goto(addr66);
         }
         §§goto(addr46);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.camera.§=P§();
         }
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §>7§
      {
         return this.§9J§.§0"!§.camera as §>7§;
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.camera.goToCastleView();
         }
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.camera.goToBirdView();
         }
      }
      
      public function §?!<§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               if(_loc2_)
               {
                  this.camera.§?!<§(param1);
               }
            }
         }
      }
   }
}
