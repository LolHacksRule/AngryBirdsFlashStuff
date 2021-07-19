package §1"a§
{
   import §"k§.§-!i§;
   import §"k§.§4#G§;
   import §"k§.§5"2§;
   import §"k§.§=#W§;
   import §"k§.§]"V§;
   import §"k§.§`§;
   import §,!,§.§0!d§;
   import §5t§.Log;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §^#G§ extends §0!d§
   {
      
      public static var §-8§:String;
      
      private static var §^#[§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §^#G§)
         {
            §^#[§ = new Dictionary();
         }
      }
      
      private var §9v§:Loader;
      
      private var §<!s§:§;"2§;
      
      public function §^#G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private function §@"Q§(param1:Class) : §;"2§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;"2§ = null;
         if(!(_loc4_ && this))
         {
            if(!§^#[§[param1])
            {
               if(_loc5_)
               {
                  §^#[§[param1] = [];
               }
            }
         }
         var _loc2_:Array = §^#[§[param1];
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_.length == 0)
            {
               addr63:
               _loc3_ = §;"2§(new param1());
               if(!(_loc4_ && param1))
               {
                  _loc3_.§[#A§(this);
                  if(_loc5_)
                  {
                     return _loc3_;
                  }
               }
            }
            return _loc2_.pop();
         }
         §§goto(addr63);
      }
      
      private function §44§(param1:§;"2§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Class = Object(this.§<!s§).constructor;
         if(_loc3_ || this)
         {
            if(!§^#[§[_loc2_])
            {
               while(true)
               {
                  §^#[§[_loc2_] = [];
                  addr84:
                  while(true)
                  {
                  }
                  addr58:
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr65:
               }
            }
            while(true)
            {
               §^#[§[_loc2_].push(param1);
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr58);
            }
            §§goto(addr65);
         }
         §§goto(addr84);
      }
      
      private function §5!o§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§6!1§).constructor;
         if(_loc5_)
         {
            if(§5"2§ === _loc3_)
            {
               if(_loc5_ || this)
               {
                  §§push(0);
                  if(_loc4_ && _loc1_)
                  {
                  }
               }
               else
               {
                  addr113:
                  §§push(2);
                  if(!_loc5_)
                  {
                     addr145:
                  }
               }
            }
            else if(§=#W§ === _loc3_)
            {
               if(!(_loc4_ && this))
               {
                  §§push(1);
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  addr127:
                  §§push(3);
                  if(_loc5_ || this)
                  {
                     §§goto(addr145);
                  }
               }
            }
            else
            {
               if(§-!i§ === _loc3_)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr113);
                  }
                  else
                  {
                     addr149:
                     §§push(4);
                     if(_loc4_ && _loc1_)
                     {
                     }
                  }
               }
               else
               {
                  if(§4#G§ === _loc3_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr127);
                     }
                     else
                     {
                        §§goto(addr149);
                     }
                  }
                  else if(§`#8§ === _loc3_)
                  {
                     §§goto(addr149);
                  }
                  else
                  {
                     §§push(5);
                  }
                  §§goto(addr149);
               }
               §§goto(addr149);
            }
            switch(§§pop())
            {
               case 0:
                  if(§5"2§(this.§6!1§).§-!P§)
                  {
                     if(_loc5_)
                     {
                        _loc1_ = §3#B§;
                        if(_loc5_ || _loc1_)
                        {
                           addr44:
                           break;
                        }
                        §§goto(addr178);
                     }
                     break;
                  }
                  _loc1_ = §9#+§;
                  §§goto(addr44);
               case 1:
                  _loc1_ = §^!t§;
                  break;
               case 2:
                  _loc1_ = §`!8§;
                  break;
               case 3:
                  _loc1_ = § ">§;
                  break;
               case 4:
                  _loc1_ = §6-§;
            }
            if(!_loc1_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  Log.log("WARNING! Unknown score item found!");
                  if(!_loc4_)
                  {
                     addr178:
                     return;
                  }
               }
            }
            var _loc2_:Class = !!this.§<!s§ ? Object(this.§<!s§).constructor : null;
            if(_loc5_ || _loc2_)
            {
               if(_loc1_ != _loc2_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§<!s§);
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§44§(removeChild(this.§<!s§) as §;"2§);
                              addr279:
                              while(true)
                              {
                              }
                           }
                           addr271:
                        }
                        while(true)
                        {
                           this.§<!s§ = addChild(this.§@"Q§(_loc1_)) as §;"2§;
                           loop5:
                           for(; !(_loc4_ && _loc3_); §§pop().data = this.§6!1§,if(_loc5_ || _loc2_)
                           {
                              addr232:
                           },continue,return)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    addr212:
                                    while(true)
                                    {
                                       §§push(this.§<!s§);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          continue loop5;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr232);
                                 }
                              }
                              else
                              {
                                 §§goto(addr271);
                              }
                           }
                           §§goto(addr279);
                        }
                     }
                  }
               }
               §§goto(addr212);
            }
            §§goto(addr254);
         }
         §§goto(addr149);
      }
      
      override public function get height() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.data = param1;
            do
            {
               this.update();
            }
            while(!_loc2_);
            
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(data == null)
            {
               if(_loc2_ || _loc2_)
               {
               }
            }
            else
            {
               this.§5!o§();
            }
         }
      }
      
      public function get §6!1§() : §]"V§
      {
         return data as §]"V§;
      }
      
      public function get §8f§() : §;"2§
      {
         return this.§<!s§;
      }
   }
}
