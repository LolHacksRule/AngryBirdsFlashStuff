package §]F§
{
   public class §!Q§
   {
       
      
      protected var §!!L§:Number = 0.0;
      
      protected var §+!e§:Number = 0.0;
      
      protected var §10§:Function = null;
      
      protected var §[!c§:Boolean = true;
      
      protected var §?" §:Boolean = true;
      
      protected var §2!L§:Boolean = true;
      
      public function §!Q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§+!e§ = param1;
            loop0:
            while(param1 < 0)
            {
               if(!(_loc3_ && param1))
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.§+!e§ = 0;
               }
               do
               {
                  break loop0;
                  §§pop().§!!L§ = §§pop();
               }
               while(_loc3_ && _loc2_);
               
               return;
            }
            while(true)
            {
               §§push(this);
               §§push(this.§+!e§);
               if(!_loc3_)
               {
                  §§push(-§§pop());
                  if(!_loc3_)
                  {
                     addr47:
                     §§push(§§pop() * 1000);
                  }
                  §§goto(addr59);
               }
               §§goto(addr47);
               §§goto(addr84);
            }
         }
         §§goto(addr81);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §;!W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§[!c§ = param1;
         }
      }
      
      public function set §^!5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§?" § = param1;
         }
      }
      
      public function get §^!5§() : Boolean
      {
         return this.§?" §;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.isCompleted)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr43:
                  this.§10§ = param1;
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function set §<!v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§2!L§ = param1;
         }
      }
      
      public function get §<!v§() : Boolean
      {
         return this.§2!L§;
      }
   }
}
