package §#!V§
{
   public class §[1§
   {
       
      
      protected var §3-§:Number = 0.0;
      
      protected var §2K§:Number = 0.0;
      
      protected var §='§:Function = null;
      
      protected var §^b§:Boolean = true;
      
      protected var §4!-§:Boolean = true;
      
      protected var §;m§:Boolean = true;
      
      public function §[1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2K§ = param1;
         }
         loop0:
         while(true)
         {
            if(param1 < 0)
            {
               loop1:
               while(true)
               {
                  this.§2K§ = 0;
                  loop2:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§2K§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(-§§pop());
                           if(_loc2_)
                           {
                              §§push(§§pop() * 1000);
                           }
                        }
                        §§pop().§3-§ = §§pop();
                        if(!_loc3_)
                        {
                           if(!_loc3_)
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
            §§goto(addr23);
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
      
      public function set §-l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^b§ = param1;
         }
      }
      
      public function set §5J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4!-§ = param1;
         }
      }
      
      public function get §5J§() : Boolean
      {
         return this.§4!-§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.isCompleted)
            {
               if(_loc3_ || param1)
               {
                  addr49:
                  this.§='§ = param1;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function set §<!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§;m§ = param1;
         }
      }
      
      public function get §<!>§() : Boolean
      {
         return this.§;m§;
      }
   }
}
