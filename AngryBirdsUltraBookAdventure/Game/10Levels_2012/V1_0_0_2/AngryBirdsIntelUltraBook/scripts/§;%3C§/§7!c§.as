package §;<§
{
   public class §7!c§
   {
       
      
      private var §]l§:int;
      
      private var §&!b§:Object;
      
      public function §7!c§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
            while(true)
            {
               this.§]l§ = param1;
               while(_loc4_)
               {
                  this.§&!b§ = param2;
                  if(!(_loc3_ && this))
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get type() : int
      {
         return this.§]l§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]l§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§&!b§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!b§ = param1;
         }
      }
   }
}
