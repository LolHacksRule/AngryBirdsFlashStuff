package §;#Q§
{
   import flash.events.Event;
   
   public class §^"O§
   {
       
      
      protected var callBack:Function;
      
      public function §^"O§(param1:Function)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            do
            {
               this.callBack = param1;
            }
            while(!_loc3_);
            
         }
      }
      
      public function delegate(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.callBack(param1);
         }
      }
   }
}
