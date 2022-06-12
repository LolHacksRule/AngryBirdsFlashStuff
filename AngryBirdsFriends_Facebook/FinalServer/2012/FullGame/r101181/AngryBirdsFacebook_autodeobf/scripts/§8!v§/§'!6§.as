package §8!v§
{
   public class §'!6§
   {
       
      
      protected var §?!x§:Number = 0.0;
      
      protected var §0!t§:Number = 0.0;
      
      protected var §>!8§:Function = null;
      
      protected var §3"!§:Boolean = true;
      
      protected var §,k§:Boolean = true;
      
      protected var §%"?§:Boolean = true;
      
      public function §'!6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§0!t§ = param1;
            loop0:
            while(true)
            {
               if(param1 >= 0)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§0!t§);
                     if(!_loc3_)
                     {
                        §§push(-§§pop());
                        if(_loc2_)
                        {
                           addr57:
                           §§push(§§pop() * 1000);
                        }
                        §§pop().§?!x§ = §§pop();
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                     §§goto(addr57);
                  }
                  return;
               }
               addr38:
            }
         }
         while(true)
         {
            §§goto(addr38);
         }
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §]!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3"!§ = param1;
         }
      }
      
      public function set §'l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,k§ = param1;
         }
      }
      
      public function get §'l§() : Boolean
      {
         return this.§,k§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!this.isCompleted)
            {
               if(_loc3_)
               {
                  addr29:
                  this.§>!8§ = param1;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function set §+"#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§%"?§ = param1;
         }
      }
      
      public function get §+"#§() : Boolean
      {
         return this.§%"?§;
      }
   }
}
