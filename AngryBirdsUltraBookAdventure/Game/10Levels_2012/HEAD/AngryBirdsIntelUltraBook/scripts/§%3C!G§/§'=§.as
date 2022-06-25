package §<!G§
{
   public class §'=§
   {
       
      
      protected var §>2§:Number = 0.0;
      
      protected var §=8§:Number = 0.0;
      
      protected var §1!1§:Function = null;
      
      protected var §9i§:Boolean = true;
      
      protected var §+M§:Boolean = true;
      
      protected var §2N§:Boolean = true;
      
      public function §'=§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§=8§ = param1;
         }
         do
         {
            if(param1 < 0)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§=8§ = 0;
               }
               while(true)
               {
               }
               addr94:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§=8§);
               if(_loc2_ || this)
               {
                  §§push(-§§pop());
                  if(_loc2_ || this)
                  {
                     addr57:
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§>2§ = §§pop();
                  if(_loc2_)
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr57);
            }
         }
         while(_loc3_ && param1);
         
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §+K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9i§ = param1;
         }
      }
      
      public function set §'H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+M§ = param1;
         }
      }
      
      public function get §'H§() : Boolean
      {
         return this.§+M§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.isCompleted);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr27:
                  this.§1!1§ = param1;
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function set §^Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§2N§ = param1;
         }
      }
      
      public function get §^Y§() : Boolean
      {
         return this.§2N§;
      }
   }
}
