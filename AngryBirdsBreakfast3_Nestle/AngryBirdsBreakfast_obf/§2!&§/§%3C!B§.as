package §2!&§
{
   public class §<!B§
   {
       
      
      private var §0!&§:Number;
      
      private var §^!!§:String;
      
      private var §@!=§:Function;
      
      private var §0!j§:Function;
      
      private var §#&§:Boolean = true;
      
      public function §<!B§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§^!!§ = param1;
            while(_loc4_ || param2)
            {
               this.§0!&§ = param2;
               if(_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8!=§() : String
      {
         return this.§^!!§;
      }
      
      public function §>"%§() : Function
      {
         return this.§@!=§;
      }
      
      public function static() : Function
      {
         return this.§0!j§;
      }
      
      public function §=!#§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§#&§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§@!=§.call(null,param1);
               }
            }
         }
      }
      
      public function §4^§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§#&§)
            {
               if(_loc2_)
               {
                  addr43:
                  this.§0!j§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §9!o§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§@!=§ = param1;
            do
            {
               this.§0!j§ = param2;
            }
            while(!_loc4_);
            
         }
      }
      
      public function §&"1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§#&§ = false;
         }
      }
      
      public function § !Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#&§ = true;
         }
      }
   }
}
