package § use§
{
   public class §<!t§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §^x§:Number = 0;
      
      protected var §;!,§:Number;
      
      protected var §`2§:Boolean = false;
      
      public function §<!t§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.mId1 = param1;
               loop1:
               while(true)
               {
                  this.mId2 = param2;
                  loop2:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        this.§;!,§ = Math.floor(param3 * 1000);
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr68);
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mId1 = param1;
         }
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §"?§() : Boolean
      {
         return this.§`2§;
      }
      
      public function set §"?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`2§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§^x§);
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^x§ = §§pop();
            while(this.§^x§ >= this.§;!,§)
            {
               if(!(_loc3_ && param1))
               {
                  §§goto(addr61);
               }
               if(!(_loc3_ && _loc2_))
               {
                  addr69:
                  break;
               }
            }
            §§push(-1);
            if(_loc2_)
            {
               return §§pop();
            }
            addr61:
            return this.mId2;
         }
         §§goto(addr69);
      }
   }
}
