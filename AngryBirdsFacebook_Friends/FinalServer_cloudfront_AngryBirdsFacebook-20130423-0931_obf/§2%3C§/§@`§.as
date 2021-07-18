package §2<§
{
   import §+!c§.§;!=§;
   
   public class §@`§
   {
       
      
      private var §]f§:String;
      
      private var §>"F§:Vector.<Function>;
      
      private var §&!C§:Boolean;
      
      public function §@`§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§]f§ = param1;
               addr81:
               while(true)
               {
                  this.§&!C§ = param3;
               }
            }
            addr84:
         }
         loop2:
         while(param2 != null)
         {
            loop3:
            do
            {
               §;!=§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               while(true)
               {
                  if(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        if(!_loc4_)
                        {
                           this.addCallback(param2);
                           if(_loc5_)
                           {
                              continue loop3;
                           }
                           continue;
                        }
                        §§goto(addr84);
                     }
                     break;
                  }
                  continue loop2;
               }
               §§goto(addr81);
            }
            while(!(_loc5_ || this));
            
            break;
         }
      }
      
      public function §^K§() : String
      {
         return this.§]f§;
      }
      
      public function §;s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!C§ = param1;
         }
      }
      
      public function §@"I§() : Boolean
      {
         return this.§&!C§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§>"F§ == null)
            {
               while(true)
               {
                  this.§>"F§ = new Vector.<Function>();
                  addr72:
                  while(true)
                  {
                  }
               }
               addr66:
            }
            for(; this.§>"F§.indexOf(param1) == -1; §§goto(addr72))
            {
               if(_loc3_)
               {
                  this.§>"F§.push(param1);
               }
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  addr61:
                  break;
               }
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §"!6§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§>"F§.indexOf(param1) > -1)
            {
               if(_loc3_)
               {
                  addr37:
                  this.§>"F§.splice(this.§>"F§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function §"!=§() : Vector.<Function>
      {
         return this.§>"F§;
      }
   }
}
