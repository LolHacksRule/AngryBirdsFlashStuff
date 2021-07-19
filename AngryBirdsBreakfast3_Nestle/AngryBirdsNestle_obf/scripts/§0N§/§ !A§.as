package §0N§
{
   public class § !A§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §="'§:Number = 0;
      
      protected var §;!E§:Number;
      
      private var §"!8§:Boolean = false;
      
      protected var §'!^§:Boolean = false;
      
      public function § !A§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.mObjectId1 = param1;
               while(true)
               {
                  this.mObjectId2 = param2;
                  loop2:
                  while(_loc5_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§;!E§ = Math.floor(param3 * 1000);
                        do
                        {
                           this.§"!8§ = param4;
                        }
                        while(_loc6_ && this);
                        
                        if(_loc5_ || param1)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §^5§() : Boolean
      {
         return this.§'!^§;
      }
      
      public function set §^5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§'!^§ = param1;
         }
      }
      
      public function get §'&§() : Boolean
      {
         return this.§"!8§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§="'§);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§="'§ = §§pop();
         }
         while(this.§="'§ >= this.§;!E§)
         {
            if(!_loc3_)
            {
               break;
            }
            if(!(_loc3_ || _loc3_))
            {
               continue;
            }
            §§goto(addr53);
         }
         §§push(true);
         if(!_loc2_)
         {
            return §§pop();
         }
         addr53:
         return false;
      }
   }
}
