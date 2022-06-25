package §4!C§
{
   import §6z§.§[g§;
   
   public class §!!^§
   {
       
      
      private var §1#§:String;
      
      private var §]O§:Vector.<Function>;
      
      private var §<!X§:Boolean;
      
      public function §!!^§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§1#§ = param1;
               while(true)
               {
                  this.§<!X§ = param3;
                  loop2:
                  while(_loc5_ || this)
                  {
                     while(param2 != null)
                     {
                        if(!(_loc4_ && param3))
                        {
                           if(!_loc4_)
                           {
                              §[g§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §>3§() : String
      {
         return this.§1#§;
      }
      
      public function §]Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!X§ = param1;
         }
      }
      
      public function §>%§() : Boolean
      {
         return this.§<!X§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§]O§ == null)
            {
               addr76:
               while(true)
               {
                  this.§]O§ = new Vector.<Function>();
                  addr82:
                  while(true)
                  {
                  }
               }
               addr76:
            }
            while(this.§]O§.indexOf(param1) == -1)
            {
               if(!(_loc2_ && param1))
               {
                  if(!_loc3_)
                  {
                     §§goto(addr82);
                     continue;
                  }
                  if(_loc3_ || _loc3_)
                  {
                     this.§]O§.push(param1);
                  }
                  else
                  {
                     §§goto(addr76);
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function §^!D§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§]O§.indexOf(param1) > -1)
            {
               if(_loc2_)
               {
                  addr41:
                  this.§]O§.splice(this.§]O§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §]9§() : Vector.<Function>
      {
         return this.§]O§;
      }
   }
}
