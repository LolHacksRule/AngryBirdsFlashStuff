package §_-OJ§
{
   import §_-4g§.Texture;
   import §_-NT§.§_-7F§;
   import §_-Ra§.§_-2X§;
   import flash.display.BitmapData;
   
   public class §_-KG§ extends §_-7F§
   {
       
      
      private var §_-8A§:Texture;
      
      private var §_-U6§:§_-2X§;
      
      public function §_-KG§(param1:XML, param2:BitmapData, param3:§_-2X§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§_-U6§ = param3;
            if(_loc5_)
            {
               this.§_-8A§ = this.§_-U6§.§_-pz§(param2);
               if(!(_loc4_ && this))
               {
                  addr48:
                  super(param1,this.§_-8A§);
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.dispose();
            if(!_loc1_)
            {
               addr32:
               this.§_-U6§.§_-tO§(this.§_-8A§);
               if(_loc2_ || this)
               {
                  this.§_-8A§ = null;
               }
            }
            return;
         }
         §§goto(addr32);
      }
   }
}
