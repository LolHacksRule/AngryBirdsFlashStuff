package §7!F§
{
   import §!!U§.DisplayObject;
   
   public class §<d§ implements §"g§
   {
       
      
      private var mName:String;
      
      private var §7"^§:Number;
      
      public function §<d§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§7"^§ = param2;
            if(!_loc4_)
            {
               if(_loc3_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get endTimeMilliSeconds() : Number
      {
         return this.§7"^§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         return null;
      }
   }
}
