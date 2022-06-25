package §_-Hb§
{
   import §_-0BH§.§_-FK§;
   
   public class §_-5p§
   {
       
      
      private var §_-Cc§:String;
      
      private var §_-0Er§:Vector.<Function>;
      
      private var §_-Ka§:Boolean;
      
      public function §_-5p§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
            while(true)
            {
               this.§_-Cc§ = param1;
               addr86:
               while(true)
               {
                  this.§_-Ka§ = param3;
               }
               addr47:
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         loop2:
         while(param2 != null)
         {
            loop3:
            while(true)
            {
               if(!_loc5_)
               {
                  continue loop2;
               }
               §_-FK§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               while(!_loc4_)
               {
                  this.addCallback(param2);
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     continue loop3;
                  }
                  §§goto(addr47);
               }
               §§goto(addr86);
            }
         }
         addr25:
      }
      
      public function §_-dz§() : String
      {
         return this.§_-Cc§;
      }
      
      public function §_-9k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-Ka§ = param1;
         }
      }
      
      public function §_-r6§() : Boolean
      {
         return this.§_-Ka§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§_-0Er§ == null)
            {
               while(true)
               {
                  this.§_-0Er§ = new Vector.<Function>();
                  addr81:
                  while(true)
                  {
                  }
               }
               addr75:
            }
            while(this.§_-0Er§.indexOf(param1) == -1)
            {
               if(!_loc3_)
               {
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  this.§_-0Er§.push(param1);
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function §_-tG§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§_-0Er§.indexOf(param1) > -1)
            {
               if(_loc2_ || this)
               {
                  addr46:
                  this.§_-0Er§.splice(this.§_-0Er§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §_-k4§() : Vector.<Function>
      {
         return this.§_-0Er§;
      }
   }
}
