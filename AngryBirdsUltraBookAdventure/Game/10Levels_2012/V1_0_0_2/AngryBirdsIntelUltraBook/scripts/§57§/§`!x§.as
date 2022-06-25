package §57§
{
   public class §`!x§
   {
       
      
      protected var §=U§:Number = 0.0;
      
      protected var §1!o§:Number = 0.0;
      
      protected var §@V§:Function = null;
      
      protected var §+!p§:Boolean = true;
      
      protected var §]!^§:Boolean = true;
      
      protected var §5u§:Boolean = true;
      
      public function §`!x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!o§ = param1;
            loop0:
            do
            {
               if(param1 < 0)
               {
                  while(true)
                  {
                     this.§1!o§ = 0;
                     addr85:
                     while(true)
                     {
                     }
                     addr68:
                     if(_loc3_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§1!o§);
                  if(!_loc2_)
                  {
                     §§push(-§§pop());
                     if(_loc3_ || _loc3_)
                     {
                        addr48:
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§=U§ = §§pop();
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr48);
               }
            }
            while(!_loc3_);
            
            return;
         }
         §§goto(addr85);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §^!K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!p§ = param1;
         }
      }
      
      public function set §-3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]!^§ = param1;
         }
      }
      
      public function get §-3§() : Boolean
      {
         return this.§]!^§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.isCompleted)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr29:
                  this.§@V§ = param1;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function set §3!9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5u§ = param1;
         }
      }
      
      public function get §3!9§() : Boolean
      {
         return this.§5u§;
      }
   }
}
