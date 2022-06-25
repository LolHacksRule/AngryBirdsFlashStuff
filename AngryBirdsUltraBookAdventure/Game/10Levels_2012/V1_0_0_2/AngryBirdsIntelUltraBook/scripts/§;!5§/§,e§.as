package §;!5§
{
   import §^_§.§!>§;
   
   public class §,e§
   {
       
      
      private var §7D§:String;
      
      private var §`>§:Vector.<Function>;
      
      private var §<P§:Boolean;
      
      public function §,e§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§7D§ = param1;
            loop1:
            while(true)
            {
               this.§<P§ = param3;
               do
               {
                  if(!_loc4_)
                  {
                     if(param2 == null)
                     {
                        break;
                     }
                     if(!(_loc4_ && param1))
                     {
                        if(_loc5_)
                        {
                           §!>§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                           continue;
                        }
                        continue loop1;
                     }
                     continue;
                  }
                  continue loop0;
               }
               while(do
               {
                  this.addCallback(param2);
               }
               while(_loc4_);
               , !_loc5_);
               
               return;
            }
         }
      }
      
      public function §>q§() : String
      {
         return this.§7D§;
      }
      
      public function § var§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§<P§ = param1;
         }
      }
      
      public function §#@§() : Boolean
      {
         return this.§<P§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§`>§ == null)
            {
               while(true)
               {
                  this.§`>§ = new Vector.<Function>();
                  addr81:
                  while(true)
                  {
                  }
                  addr59:
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  this.§`>§.push(param1);
                  addr19:
                  return;
                  addr70:
               }
            }
            for(; this.§`>§.indexOf(param1) == -1; §§goto(addr81))
            {
               if(!(_loc3_ && param1))
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr59);
               }
               §§goto(addr70);
            }
         }
         §§goto(addr19);
      }
      
      public function §<a§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§`>§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  addr41:
                  this.§`>§.splice(this.§`>§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §#!R§() : Vector.<Function>
      {
         return this.§`>§;
      }
   }
}
