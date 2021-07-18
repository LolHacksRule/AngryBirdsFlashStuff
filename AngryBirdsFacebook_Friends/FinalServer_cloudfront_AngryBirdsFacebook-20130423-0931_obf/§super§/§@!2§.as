package §super§
{
   public class §@!2§
   {
       
      
      protected var §'"K§:int;
      
      protected var §`Z§:int;
      
      protected var §;z§:Number = 0;
      
      protected var § !]§:Number;
      
      protected var §,!A§:Boolean = false;
      
      public function §@!2§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§'"K§ = param1;
            while(true)
            {
               this.§`Z§ = param2;
               while(!_loc4_)
               {
                  continue loop0;
                  this.§ !]§ = Math.floor(param3 * 1000);
                  if(_loc5_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get §!§() : int
      {
         return this.§'"K§;
      }
      
      public function set §!§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§'"K§ = param1;
         }
      }
      
      public function get targetId() : int
      {
         return this.§`Z§;
      }
      
      public function get §<3§() : int
      {
         return this.§ !]§;
      }
      
      public function get §2B§() : Boolean
      {
         return this.§,!A§;
      }
      
      public function set §2B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!A§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            §§push(this.§;z§);
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§;z§ = §§pop();
            while(this.§;z§ >= this.§ !]§)
            {
               if(!(_loc3_ || param1))
               {
                  break;
               }
               addr70:
               if(!_loc2_)
               {
                  §§goto(addr69);
               }
            }
            §§push(-1);
            if(!_loc2_)
            {
               return §§pop();
            }
            addr69:
            return this.§`Z§;
         }
         §§goto(addr70);
      }
   }
}
