package §0#P§
{
   public class §?!§
   {
       
      
      public var index:int;
      
      public var type:String;
      
      public var optional:Boolean;
      
      public function §?!§(param1:XML)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.index = param1.@index;
            do
            {
               this.type = param1.@type;
               do
               {
                  this.optional = param1.@optional;
               }
               while(_loc2_ && _loc3_);
               
            }
            while(!_loc3_);
            
         }
         while(!_loc3_);
         
      }
   }
}
