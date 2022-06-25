package §7r§
{
   import §^_§.§,>§;
   
   public class §5e§
   {
      
      public static const §'!f§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!f§ = §'!r§;
         }
      }
      
      private var §"!c§:Array;
      
      public function §5e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"!c§ = [];
            do
            {
               super();
               do
               {
                  this.§`!J§();
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      public function get characters() : Array
      {
         return this.§"!c§;
      }
      
      private function §`!J§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:§#!q§ = null;
         var _loc4_:* = null;
         var _loc1_:XML = §,>§.§%2§(§'!f§);
         if(_loc7_ || _loc3_)
         {
            this.§"!c§ = [];
         }
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §#!q§();
            if(_loc7_ || _loc1_)
            {
               _loc3_.§&!X§ = _loc2_.@id;
               while(true)
               {
                  _loc3_.sId = _loc2_.@sid;
               }
               addr275:
            }
            while(true)
            {
               §§push(_loc2_.@activeScale);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(§§pop());
                  while(true)
                  {
                     _loc4_ = §§pop();
                  }
                  addr257:
               }
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        _loc3_.§7!6§ = Number(_loc4_);
                        addr264:
                        while(true)
                        {
                        }
                     }
                     addr259:
                  }
                  while(true)
                  {
                     §§push(_loc2_.@inactiveScale);
                     loop8:
                     while(true)
                     {
                        §§push(§§pop());
                        loop9:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop10:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    _loc3_.§2!V§ = Number(_loc4_);
                                    addr234:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr229:
                              }
                              while(true)
                              {
                                 §§push(_loc2_.@snapshotScale);
                                 loop14:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop15:
                                    while(!_loc8_)
                                    {
                                       _loc4_ = §§pop();
                                       while(!_loc8_)
                                       {
                                          continue loop8;
                                          if(_loc7_ || _loc3_)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop());
                                                if(_loc7_ || this)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      continue loop14;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop15;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop10;
                                    }
                                    §§goto(addr257);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
