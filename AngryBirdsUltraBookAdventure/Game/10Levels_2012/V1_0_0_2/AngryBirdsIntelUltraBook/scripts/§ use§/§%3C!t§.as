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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            while(true)
            {
               this.mId1 = param1;
               loop1:
               while(!(_loc5_ && param2))
               {
                  while(true)
                  {
                     this.mId2 = param2;
                     do
                     {
                        this.§;!,§ = Math.floor(param3 * 1000);
                     }
                     while(_loc5_ && param1);
                     
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr87);
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
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
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§^x§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^x§ = §§pop();
         }
         while(this.§^x§ >= this.§;!,§)
         {
            if(!(_loc2_ || this))
            {
               break;
            }
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            §§goto(addr68);
         }
         §§push(-1);
         if(!_loc3_)
         {
            return §§pop();
         }
         addr68:
         return this.mId2;
      }
   }
}
