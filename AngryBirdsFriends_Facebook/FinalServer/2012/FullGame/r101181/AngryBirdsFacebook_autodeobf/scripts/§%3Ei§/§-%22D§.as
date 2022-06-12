package §>i§
{
   public class §-"D§ implements §'!p§
   {
       
      
      private var §'!y§:Array;
      
      private var §;!4§:Boolean;
      
      public function §-"D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'!y§ = [];
            do
            {
               super();
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function §'`§(param1:§]y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!y§.push(param1);
         }
         do
         {
            this.§;!4§ = false;
         }
         while(!_loc3_);
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]y§ = null;
         var _loc3_:* = this.§'!y§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc3_))
         {
            this.§'!y§ = [];
         }
      }
      
      public function §-X§(param1:String) : §^J§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§^J§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§'!y§.length)
         {
            _loc2_ = (this.§'!y§[_loc3_] as §]y§).§-X§(param1);
            if(!_loc4_)
            {
               if(_loc2_ != null)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     return _loc2_;
                  }
                  continue;
               }
            }
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
               if(!_loc4_)
               {
                  addr82:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr82);
         }
         return null;
      }
      
      public function get §2!l§() : int
      {
         return this.§'!y§.length;
      }
      
      public function §59§(param1:int) : §]y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr118:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr113:
                              return null;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(this.§;!4§);
                              if(!_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.§'!y§);
                                       addr80:
                                       addr115:
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          while(_loc2_)
                                          {
                                             this.§;!4§ = true;
                                             if(_loc2_ || param1)
                                             {
                                                continue loop4;
                                             }
                                          }
                                          §§goto(addr113);
                                       }
                                       addr115:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§'!y§);
                                    if(_loc2_ || this)
                                    {
                                       break;
                                    }
                                    §§goto(addr80);
                                 }
                                 return §§pop()[param1];
                              }
                              break;
                           }
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr115);
      }
   }
}
