package §4y§
{
   import §+!c§.§9"H§;
   
   public class §"!`§
   {
      
      public static const §4-§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4-§ = §3"J§;
         }
      }
      
      private var §+Y§:Array;
      
      public function §"!`§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§+Y§ = [];
            while(true)
            {
               super();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§%"+§();
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §>"!§(param1:String) : §0"H§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§0"H§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§]!z§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(_loc2_.§&N§ == param1)
               {
                  if(_loc5_ || _loc3_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §]!z§() : Array
      {
         return this.§+Y§;
      }
      
      private function §%"+§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:§0"H§ = null;
         var _loc4_:* = null;
         var _loc1_:XML = §9"H§.§5!h§(§4-§);
         if(_loc7_ || _loc1_)
         {
            this.§+Y§ = [];
         }
         loop0:
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §0"H§();
            if(_loc7_)
            {
               _loc3_.§&N§ = _loc2_.@id;
               loop1:
               while(true)
               {
                  _loc3_.sId = _loc2_.@sid;
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_.@activeScale);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_.@inactiveScale);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    loop9:
                                    for(; !_loc8_; while(true)
                                    {
                                       §§push(_loc2_.@snapshotScale);
                                       if(_loc7_ || _loc1_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop9;
                                    },continue loop0)
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop1;
                                             }
                                             _loc3_.§`k§ = Number(_loc4_);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc3_.§'&§ = Number(_loc4_);
                                                continue loop2;
                                             }
                                             addr161:
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop9;
                                          addr106:
                                          while(_loc7_ || this)
                                          {
                                             this.§+Y§.push(_loc3_);
                                             if(!_loc8_)
                                             {
                                                if(_loc7_ || _loc1_)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                                 addr114:
                              }
                              §§goto(addr161);
                           }
                        }
                        if(!(_loc7_ || _loc1_))
                        {
                           continue;
                        }
                        _loc4_ = §§pop();
                        §§goto(addr106);
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr114);
            }
         }
      }
   }
}
