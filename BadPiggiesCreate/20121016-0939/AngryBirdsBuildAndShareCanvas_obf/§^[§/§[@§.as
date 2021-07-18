package §^[§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §[@§
   {
       
      
      protected var §8O§:BitmapFilter;
      
      public function §[@§(param1:BitmapFilter = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            do
            {
               if(param1)
               {
                  if(!(_loc2_ || param1))
                  {
                     break;
                  }
                  continue;
               }
               this.§8O§ = new GlowFilter(16777215,0.8,8,8,6);
            }
            while(_loc2_);
            
            §§goto(addr24);
         }
         addr24:
      }
      
      public function §"!,§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.filters = [this.§8O§.clone()];
         }
      }
      
      public function §0k§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            param1.filters = [];
         }
      }
   }
}
