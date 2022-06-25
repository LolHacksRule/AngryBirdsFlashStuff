package §6!F§
{
   import §3a§.§7!+§;
   
   public class §3!>§
   {
       
      
      private var §#j§:String;
      
      private var §<W§:Vector.<Function>;
      
      private var §3!E§:Boolean;
      
      public function §3!>§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(!(_loc4_ && param1))
         {
            this.§#j§ = param1;
            this.§3!E§ = param3;
         }
         if(param2 != null)
         {
            §7!+§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            if(!_loc4_)
            {
               this.addCallback(param2);
            }
         }
      }
      
      public function §&D§() : String
      {
         return this.§#j§;
      }
      
      public function §!!B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§3!E§ = param1;
         }
      }
      
      public function §&!7§() : Boolean
      {
         return this.§3!E§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§<W§ == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§<W§ = new Vector.<Function>();
                  if(!_loc3_)
                  {
                     addr47:
                     if(this.§<W§.indexOf(param1) == -1)
                     {
                        if(!_loc2_)
                        {
                        }
                     }
                     §§goto(addr59);
                  }
                  this.§<W§.push(param1);
                  §§goto(addr59);
               }
            }
            §§goto(addr47);
         }
         addr59:
      }
      
      public function §@u§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§<W§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§<W§.splice(this.§<W§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §@Y§() : Vector.<Function>
      {
         return this.§<W§;
      }
   }
}
