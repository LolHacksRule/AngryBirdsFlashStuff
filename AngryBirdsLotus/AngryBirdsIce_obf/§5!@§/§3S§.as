package §5!@§
{
   public class §3S§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §+9§:Number = 0;
      
      protected var §=!;§:Number;
      
      protected var § <§:Boolean = false;
      
      public function §3S§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
         }
         loop0:
         do
         {
            this.mId1 = param1;
            while(true)
            {
               this.mId2 = param2;
               while(_loc4_ || this)
               {
                  this.§=!;§ = Math.floor(param3 * 1000);
                  if(_loc4_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc4_);
         
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.mId1 = param1;
         }
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function set id2(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mId2 = param1;
         }
      }
      
      public function get §;N§() : Boolean
      {
         return this.§ <§;
      }
      
      public function set §;N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§ <§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§+9§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§+9§ = §§pop();
            while(this.§+9§ >= this.§=!;§)
            {
               if(!_loc3_)
               {
                  break;
               }
               addr50:
               if(!_loc2_)
               {
                  §§goto(addr49);
               }
            }
            §§push(-1);
            if(!_loc2_)
            {
               return §§pop();
            }
            addr49:
            return this.mId2;
         }
         §§goto(addr50);
      }
   }
}
