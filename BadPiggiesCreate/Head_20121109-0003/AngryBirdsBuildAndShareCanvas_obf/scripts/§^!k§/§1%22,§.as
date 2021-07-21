package §^!k§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §1",§
   {
       
      
      protected var §]!q§:BitmapFilter;
      
      public function §1",§(param1:BitmapFilter = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         do
         {
            if(!param1)
            {
               this.§]!q§ = new GlowFilter(16777215,0.8,8,8,6);
               if(!_loc3_)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               else
               {
                  addr74:
               }
            }
            continue;
            return;
         }
         while(!(_loc2_ || _loc3_));
         
         this.§]!q§ = param1.clone();
         §§goto(addr74);
      }
      
      public function §#!>§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.filters = [this.§]!q§.clone()];
         }
      }
      
      public function §8"-§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1.filters = [];
         }
      }
   }
}
