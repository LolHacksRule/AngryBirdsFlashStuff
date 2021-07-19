package §+!h§
{
   import §0N§.§2!@§;
   
   public class §5!6§
   {
       
      
      private var §&!4§:String;
      
      private var §>!E§:Vector.<Function>;
      
      private var §0!E§:Boolean;
      
      public function §5!6§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            while(true)
            {
               this.§&!4§ = param1;
               loop1:
               while(_loc4_ || param3)
               {
                  this.§0!E§ = param3;
                  loop2:
                  while(param2 != null)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc4_)
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           §2!@§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                        }
                     }
                     while(_loc4_)
                     {
                        this.addCallback(param2);
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §&!8§() : String
      {
         return this.§&!4§;
      }
      
      public function §!!a§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!E§ = param1;
         }
      }
      
      public function §7"B§() : Boolean
      {
         return this.§0!E§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§>!E§ == null)
            {
               while(true)
               {
                  this.§>!E§ = new Vector.<Function>();
                  addr76:
                  addr42:
                  while(true)
                  {
                  }
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§>!E§.push(param1);
                     addr53:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr76);
                        }
                        §§goto(addr19);
                     }
                  }
                  addr49:
               }
            }
            while(true)
            {
               if(this.§>!E§.indexOf(param1) == -1)
               {
                  if(_loc2_)
                  {
                     §§goto(addr42);
                  }
                  §§goto(addr53);
               }
               break;
               §§goto(addr76);
            }
            addr19:
            return;
         }
         §§goto(addr49);
      }
      
      public function §@!`§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§>!E§.indexOf(param1) > -1)
            {
               if(_loc3_ || _loc2_)
               {
                  addr57:
                  this.§>!E§.splice(this.§>!E§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §7P§() : Vector.<Function>
      {
         return this.§>!E§;
      }
   }
}
