package § !u§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §&^§
   {
       
      
      protected var §!!#§:BitmapFilter;
      
      public function §&^§(param1:BitmapFilter = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            if(_loc3_)
            {
               if(param1)
               {
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  this.§!!#§ = new GlowFilter(16777215,1,8,8,6);
               }
               §§goto(addr58);
            }
            this.§!!#§ = param1.clone();
            if(_loc2_)
            {
            }
         }
         addr58:
      }
      
      public function §@!C§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.filters = [this.§!!#§.clone()];
         }
      }
      
      public function § B§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1.filters = [];
         }
      }
   }
}
