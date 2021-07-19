package §&o§
{
   public class §2=§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §5!N§:Number = 0;
      
      protected var §+!I§:Number;
      
      protected var §2!;§:Boolean = false;
      
      public function §2=§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            loop0:
            do
            {
               this.mId1 = param1;
               while(true)
               {
                  this.mId2 = param2;
                  while(!(_loc5_ && param2))
                  {
                     this.§+!I§ = Math.floor(param3 * 1000);
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc5_ && this);
            
         }
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
      
      public function get §38§() : Boolean
      {
         return this.§2!;§;
      }
      
      public function set §38§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!;§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§5!N§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§5!N§ = §§pop();
            while(this.§5!N§ >= this.§+!I§)
            {
               if(_loc3_)
               {
                  §§goto(addr62);
               }
               if(_loc3_)
               {
                  addr65:
                  break;
               }
            }
            §§push(-1);
            if(_loc3_)
            {
               return §§pop();
            }
            addr62:
            return this.mId2;
         }
         §§goto(addr65);
      }
   }
}
