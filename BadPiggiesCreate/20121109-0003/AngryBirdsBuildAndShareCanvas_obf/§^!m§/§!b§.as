package §^!m§
{
   import §6]§.§,"0§;
   
   public class §!b§
   {
       
      
      private var §&!k§:String;
      
      private var §"";§:Vector.<Function>;
      
      private var §8j§:Boolean;
      
      public function §!b§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§&!k§ = param1;
               addr75:
               while(true)
               {
                  this.§8j§ = param3;
               }
            }
            addr78:
         }
         loop2:
         while(param2 != null)
         {
            loop3:
            do
            {
               §,"0§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               while(true)
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           this.addCallback(param2);
                           if(!_loc5_)
                           {
                              continue loop3;
                           }
                           continue;
                        }
                        §§goto(addr78);
                     }
                     break;
                  }
                  continue loop2;
               }
               §§goto(addr75);
            }
            while(_loc5_);
            
            break;
         }
      }
      
      public function §>!z§() : String
      {
         return this.§&!k§;
      }
      
      public function §5!T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8j§ = param1;
         }
      }
      
      public function §!9§() : Boolean
      {
         return this.§8j§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§"";§ == null)
            {
               if(!_loc2_)
               {
                  this.§"";§ = new Vector.<Function>();
               }
               while(true)
               {
               }
               addr77:
            }
            loop1:
            for(; this.§"";§.indexOf(param1) == -1; §§goto(addr77))
            {
               if(!_loc2_)
               {
                  while(true)
                  {
                     this.§"";§.push(param1);
                  }
                  addr48:
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     break loop1;
                  }
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §#"%§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§"";§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  addr51:
                  this.§"";§.splice(this.§"";§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §+!+§() : Vector.<Function>
      {
         return this.§"";§;
      }
   }
}
