package §5!1§
{
   public class §^Q§
   {
       
      
      protected var §+K§:Number = 0.0;
      
      protected var §]A§:Number = 0.0;
      
      protected var §,3§:Function = null;
      
      protected var § !Z§:Boolean = true;
      
      protected var §3[§:Boolean = true;
      
      protected var §#c§:Boolean = true;
      
      public function §^Q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
            this.§]A§ = param1;
         }
         loop0:
         while(true)
         {
            if(param1 >= 0)
            {
               do
               {
                  §§push(this);
                  §§push(this.§]A§);
                  if(!_loc3_)
                  {
                     §§push(-§§pop());
                     if(_loc2_)
                     {
                        §§push(§§pop() * 1000);
                     }
                  }
                  §§pop().§+K§ = §§pop();
                  if(_loc3_)
                  {
                     continue loop0;
                  }
               }
               while(_loc3_ && param1);
               
               return;
               addr23:
            }
            while(true)
            {
               this.§]A§ = 0;
               continue loop0;
               §§goto(addr47);
            }
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
      
      public function set §,!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§ !Z§ = param1;
         }
      }
      
      public function set §<!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§3[§ = param1;
         }
      }
      
      public function get §<!-§() : Boolean
      {
         return this.§3[§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!this.isCompleted)
            {
               if(!_loc3_)
               {
                  this.§,3§ = param1;
               }
            }
         }
      }
      
      public function set §<'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#c§ = param1;
         }
      }
      
      public function get §<'§() : Boolean
      {
         return this.§#c§;
      }
   }
}
