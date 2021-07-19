package §<"c§
{
   import §#!'§.§6"]§;
   import §&#H§.§3#J§;
   import com.angrybirds.§,!q§;
   
   public class §2"W§
   {
      
      private static const §`G§:Number = -5000.0;
      
      private static const §6!z§:Number = 10000.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`G§ = -5 * 1000;
            do
            {
               §6!z§ = 10 * 1000;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private var §7!-§:Number = -5000.0;
      
      private var §4-§:int = 0;
      
      private var §0"7§:Number = 0;
      
      private var §[!t§:Number = 0;
      
      private var §@!F§:String;
      
      public function §2"W§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§@!F§ = param1;
         }
         while(!_loc3_);
         
      }
      
      public function §5"]§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:* = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§7!-§ > §6!z§)
            {
               loop0:
               while(true)
               {
                  _loc1_ = Math.round(1000 / this.§7!-§ * this.§4-§);
                  while(true)
                  {
                     §§push((§,!q§.§>#D§ as §4#;§).§>!Z§());
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc2_ = §§pop();
                     loop2:
                     while(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              §6"]§.§]F§(_loc1_,this.§@!F§,§3#J§.§3!s§,_loc2_);
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §4K§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§7!-§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§7!-§ = §§pop();
            if(_loc5_)
            {
               §§push(this.§7!-§);
               if(!(_loc4_ && param1))
               {
                  §§push(0);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc5_)
                        {
                           addr49:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§4-§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_)
                           {
                              _loc2_.§4-§ = _loc3_;
                           }
                           if(_loc5_ || _loc3_)
                           {
                              addr122:
                              §§push(this.§0"7§);
                              loop0:
                              while(true)
                              {
                                 §§push(§,!q§.§0#X§());
                                 addr136:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    addr140:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                this.§8Q§();
                                             }
                                             break;
                                          }
                                          return;
                                          addr113:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              addr124:
                              addr81:
                           }
                           while(true)
                           {
                              §§push(this.§[!t§);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§,!q§.§[">§());
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc4_)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr106:
                                             §§push(!§§pop());
                                             if(_loc4_ && param1)
                                             {
                                                §§goto(addr140);
                                             }
                                             §§goto(addr113);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr106);
                                    }
                                    addr95:
                                 }
                                 else
                                 {
                                    §§goto(addr136);
                                 }
                                 §§goto(addr140);
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr95);
               }
               §§goto(addr91);
            }
         }
         §§goto(addr49);
      }
      
      public function §8Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§7!-§ = §`G§;
            loop0:
            while(true)
            {
               this.§4-§ = 0;
               do
               {
                  this.§0"7§ = §,!q§.§0#X§();
                  continue loop0;
               }
               while(!_loc1_);
               
            }
         }
      }
   }
}
