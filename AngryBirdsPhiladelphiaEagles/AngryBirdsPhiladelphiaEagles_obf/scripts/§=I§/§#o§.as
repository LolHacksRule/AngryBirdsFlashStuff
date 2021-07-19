package §=I§
{
   public class §#o§ implements §2i§
   {
       
      
      private var §0>§:Array;
      
      private var §3D§:Boolean;
      
      public function §#o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§0>§ = [];
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §>!>§(param1:§-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0>§.push(param1);
            do
            {
               this.§3D§ = false;
            }
            while(_loc2_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§-§ = null;
         var _loc3_:* = this.§0>§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc4_)
         {
            this.§0>§ = [];
         }
      }
      
      public function §;M§(param1:String) : §5!B§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§5!B§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§0>§.length)
            {
               return null;
            }
            _loc2_ = (this.§0>§[_loc3_] as §-§).§;M§(param1);
            if(_loc5_ || this)
            {
               if(_loc2_ != null)
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
                  continue;
               }
               §§push(_loc3_);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
                  if(_loc5_)
                  {
                     addr82:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr82);
            }
            break;
         }
         return _loc2_;
      }
      
      public function get §!!G§() : int
      {
         return this.§0>§.length;
      }
      
      public function §`a§(param1:int) : §-§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
                  addr119:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§3D§);
                                 if(!(_loc2_ || this))
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.§0>§);
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   return null;
                                                }
                                                addr113:
                                                if(!(_loc3_ && this))
                                                {
                                                   this.§3D§ = true;
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             continue loop7;
                                          }
                                          addr40:
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       addr66:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§0>§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          break;
                                       }
                                       §§goto(addr66);
                                    }
                                    return §§pop()[param1];
                                 }
                                 addr121:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                              while(!(_loc3_ && param1))
                              {
                                 continue loop6;
                                 §§goto(addr41);
                              }
                              addr41:
                              continue loop2;
                              addr104:
                           }
                           §§goto(addr113);
                        }
                     }
                     §§goto(addr121);
                  }
               }
            }
         }
         §§goto(addr40);
      }
   }
}
