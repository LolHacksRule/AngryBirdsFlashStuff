package §#!o§
{
   import §1!B§.§>!s§;
   
   public class Items
   {
      
      private static var §set §:XML;
       
      
      private var §#!B§:Vector.<§>!,§> = null;
      
      private var §7!4§:Vector.<String> = null;
      
      private var §&O§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            do
            {
               this.§=$§();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function get §9!B§() : Vector.<String>
      {
         return this.§7!4§;
      }
      
      public function get §>!J§() : Vector.<§>!,§>
      {
         return this.§#!B§;
      }
      
      private function §=$§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         if(!_loc10_)
         {
            this.§#!B§ = new Vector.<§>!,§>();
         }
         while(true)
         {
            this.§&O§ = new Array();
            while(_loc9_)
            {
               while(true)
               {
                  this.§7!4§ = new Vector.<String>();
                  do
                  {
                     §set § = §>!s§.§;§(§>!M§.§6!J§);
                  }
                  while(!_loc9_);
                  
                  if(_loc10_ && _loc2_)
                  {
                     break;
                  }
                  if(true)
                  {
                     for each(_loc1_ in §set §.items.category)
                     {
                        if(!(_loc10_ && _loc3_))
                        {
                           _loc2_ = _loc1_.@id;
                           if(!(_loc10_ && _loc1_))
                           {
                              do
                              {
                                 this.§#!B§.push(new §>!,§(_loc2_,_loc1_.@sid));
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 this.§&O§[_loc2_] = new Array();
                              }
                              while(_loc9_);
                              
                              addr105:
                           }
                           continue;
                        }
                        while(false)
                        {
                           §§goto(addr105);
                        }
                        var _loc7_:int = 0;
                        if(_loc9_)
                        {
                           loop7:
                           for each(_loc3_ in _loc1_.item)
                           {
                              (_loc4_ = new Item()).§9!^§ = _loc3_.@id;
                              if(_loc9_ || _loc2_)
                              {
                                 _loc4_.sId = _loc3_.@sid;
                                 while(true)
                                 {
                                    _loc4_.mName = _loc3_.@name;
                                    loop9:
                                    while(_loc9_ || this)
                                    {
                                       _loc4_.§>!i§ = _loc3_.@anchor;
                                       while(true)
                                       {
                                          _loc4_.§^w§ = _loc2_;
                                          addr222:
                                          loop11:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(this.§7!4§.indexOf(_loc4_.§>!i§) == -1)
                                                {
                                                   if(_loc9_ || _loc1_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr217:
                                                   while(true)
                                                   {
                                                   }
                                                   addr217:
                                                }
                                                while(true)
                                                {
                                                   this.§&O§[_loc2_].push(_loc4_);
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr217);
                                                }
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             continue loop9;
                                          }
                                          if(_loc10_ && this)
                                          {
                                             continue;
                                          }
                                          this.§7!4§.push(_loc4_.§>!i§);
                                          §§goto(addr217);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr222);
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§&O§;
      }
      
      public function §7!§(param1:String) : Array
      {
         return this.§&O§[param1];
      }
      
      public function §`!H§(param1:String) : Item
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§>!,§ = null;
         var _loc3_:* = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§#!B§)
         {
            if(_loc9_)
            {
               §§push(_loc2_.name);
               if(!(_loc10_ && _loc3_))
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(_loc9_)
               {
                  var _loc7_:int = 0;
                  if(_loc9_)
                  {
                     for each(_loc4_ in this.§&O§[_loc3_])
                     {
                        if(_loc4_.§9!^§.toUpperCase() == param1.toUpperCase())
                        {
                           if(!_loc10_)
                           {
                              return _loc4_;
                           }
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
   }
}
