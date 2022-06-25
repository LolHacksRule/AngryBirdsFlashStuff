package § $§
{
   import §'N§.Log;
   
   public class ServerCommand
   {
       
      
      private var §0$§:String;
      
      private var §0?§:Vector.<Function>;
      
      private var §'![§:Boolean;
      
      public function ServerCommand(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§0$§ = param1;
               while(true)
               {
                  this.§'![§ = param3;
                  loop2:
                  while(_loc5_ || this)
                  {
                     while(param2 != null)
                     {
                        while(true)
                        {
                           Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                           continue loop2;
                           addr41:
                           while(_loc5_ || param2)
                           {
                              this.addCallback(param2);
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr41);
                           }
                           if(_loc5_ || param1)
                           {
                              continue loop0;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §<[§() : String
      {
         return this.§0$§;
      }
      
      public function §@!K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§'![§ = param1;
         }
      }
      
      public function §!K§() : Boolean
      {
         return this.§'![§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§0?§ == null)
            {
               if(!(_loc2_ && param1))
               {
                  this.§0?§ = new Vector.<Function>();
               }
               while(true)
               {
               }
               addr85:
            }
            for(; this.§0?§.indexOf(param1) == -1; §§goto(addr85))
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     this.§0?§.push(param1);
                     addr65:
                     break;
                  }
                  continue;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §<!<§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§0?§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr47:
                  this.§0?§.splice(this.§0?§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function § !#§() : Vector.<Function>
      {
         return this.§0?§;
      }
   }
}
