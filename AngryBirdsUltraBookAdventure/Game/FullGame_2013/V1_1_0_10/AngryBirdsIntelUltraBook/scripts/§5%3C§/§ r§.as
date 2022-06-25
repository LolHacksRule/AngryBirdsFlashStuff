package §5<§
{
   public class § r§
   {
       
      
      protected var §"!H§:int;
      
      protected var §@!z§:int;
      
      protected var §4!K§:Number = 0;
      
      protected var §<!'§:Number;
      
      protected var §;B§:Boolean = false;
      
      public function § r§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
         }
         while(true)
         {
            this.§"!H§ = param1;
            while(_loc4_ || param3)
            {
               this.§@!z§ = param2;
               do
               {
                  this.§<!'§ = Math.floor(param3 * 1000);
               }
               while(_loc5_);
               
               if(!(_loc5_ && param3))
               {
                  return;
               }
            }
         }
      }
      
      public function get §`s§() : int
      {
         return this.§"!H§;
      }
      
      public function set §`s§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"!H§ = param1;
         }
      }
      
      public function get targetId() : int
      {
         return this.§@!z§;
      }
      
      public function get §2,§() : int
      {
         return this.§<!'§;
      }
      
      public function get §!s§() : Boolean
      {
         return this.§;B§;
      }
      
      public function set §!s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§;B§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§4!K§);
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§4!K§ = §§pop();
            for(; this.§4!K§ >= this.§<!'§; if(!(_loc3_ && _loc3_))
            {
               break;
            })
            {
               if(!(_loc2_ || param1))
               {
                  continue;
               }
            }
            §§push(-1);
            if(_loc2_ || _loc3_)
            {
               return §§pop();
            }
            §§goto(addr66);
         }
         addr66:
         this.§@!z§;
         return §§pop();
      }
   }
}
