package § "C§
{
   import §6o§.§+!k§;
   
   public class §<r§
   {
       
      
      private var §2J§:String;
      
      private var §&"F§:Vector.<Function>;
      
      private var §3o§:Boolean;
      
      public function §<r§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§2J§ = param1;
               while(true)
               {
                  this.§3o§ = param3;
                  addr53:
                  if(_loc4_ || param2)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(param2 != null)
         {
            do
            {
               §+!k§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               do
               {
                  this.addCallback(param2);
               }
               while(_loc5_ && this);
               
            }
            while(_loc5_);
            
            if(!(_loc4_ || param2))
            {
               continue;
            }
            §§goto(addr53);
         }
         §§goto(addr19);
      }
      
      public function §]`§() : String
      {
         return this.§2J§;
      }
      
      public function §@S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3o§ = param1;
         }
      }
      
      public function §7!i§() : Boolean
      {
         return this.§3o§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§&"F§ == null)
            {
               addr80:
               while(true)
               {
                  this.§&"F§ = new Vector.<Function>();
                  addr86:
                  while(true)
                  {
                  }
               }
               addr80:
            }
            for(; this.§&"F§.indexOf(param1) == -1; §§goto(addr86))
            {
               if(_loc2_ || _loc3_)
               {
                  this.§&"F§.push(param1);
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function §[">§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§&"F§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  addr36:
                  this.§&"F§.splice(this.§&"F§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §6^§() : Vector.<Function>
      {
         return this.§&"F§;
      }
   }
}
