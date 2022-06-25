package §-^§
{
   import §1!B§.§<m§;
   
   public class §=q§
   {
       
      
      private var §^!=§:String;
      
      private var §>v§:Vector.<Function>;
      
      private var §4!<§:Boolean;
      
      public function §=q§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^!=§ = param1;
            loop1:
            while(true)
            {
               this.§4!<§ = param3;
               loop2:
               while(param2 != null)
               {
                  continue loop1;
                  while(!(_loc5_ && param2))
                  {
                     if(!_loc5_)
                     {
                        this.addCallback(param2);
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           continue loop1;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
      }
      
      public function §`!$§() : String
      {
         return this.§^!=§;
      }
      
      public function §^"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!<§ = param1;
         }
      }
      
      public function §[N§() : Boolean
      {
         return this.§4!<§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§>v§ == null)
            {
               if(!_loc2_)
               {
                  addr71:
                  this.§>v§ = new Vector.<Function>();
               }
               while(true)
               {
                  addr56:
                  if(!_loc2_)
                  {
                     this.§>v§.push(param1);
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr35);
               }
               addr77:
            }
            while(true)
            {
               if(this.§>v§.indexOf(param1) == -1)
               {
                  §§goto(addr56);
               }
               break;
               §§goto(addr77);
            }
            addr35:
            return;
         }
         §§goto(addr71);
      }
      
      public function §=+§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§>v§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  this.§>v§.splice(this.§>v§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §;!3§() : Vector.<Function>
      {
         return this.§>v§;
      }
   }
}
