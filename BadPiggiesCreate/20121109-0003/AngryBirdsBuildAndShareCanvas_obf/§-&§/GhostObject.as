package §-&§
{
   import §"_§.§!"8§;
   import §&!P§.§^!!§;
   import §+!-§.Sprite;
   import §7t§.§7a§;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §+<§:Point;
      
      private var §5!P§:b2Vec2;
      
      private var §0!>§:Number;
      
      private var §""+§:Rectangle;
      
      private var §8!1§:b2Vec2;
      
      private var mName:String;
      
      private var §2!2§:b2Transform;
      
      private var § D§:Sprite;
      
      private var §,E§:§7a§;
      
      private var §1!b§:uint = 16777215;
      
      private var §%"2§:uint;
      
      private const §&2§:uint = 14218751;
      
      private const §!">§:uint = 16237696;
      
      private const §7!Y§:uint = 13882323;
      
      private var §9$§:uint = 12318377;
      
      public function GhostObject(param1:§7a§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%"2§ = this.§1!b§;
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§ D§ = param1.§#!Q§();
                  loop2:
                  while(true)
                  {
                     this.§+<§ = new Point(this.§ D§.x,this.§ D§.y);
                     loop3:
                     while(true)
                     {
                        this.§5!P§ = param1.§]5§();
                        loop4:
                        for(; !_loc3_; while(!(_loc3_ && this))
                        {
                           addr43:
                           if(!(_loc3_ && param1))
                           {
                              this.§=]§(this.mName);
                              addr50:
                              if(!(_loc2_ || _loc2_))
                              {
                                 while(!_loc3_)
                                 {
                                    §§goto(addr43);
                                    §§goto(addr50);
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(_loc2_)
                                       {
                                          this.mName = param1.getName();
                                          continue loop9;
                                       }
                                       continue loop1;
                                       addr78:
                                    }
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    this.§2!2§ = param1.§3z§();
                                    §§goto(addr41);
                                 }
                                 addr41:
                                 §§goto(addr100);
                              }
                              return;
                           }
                        })
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           this.§0!>§ = this.§ D§.rotation;
                           while(true)
                           {
                              this.§""+§ = param1.§&8§();
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§8!1§ = param1.getCenter();
            §§goto(addr78);
         }
      }
      
      public function refresh(param1:§^!!§, param2:Vector.<§7a§>) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7a§ = null;
         if(_loc4_ || this)
         {
            §§push(this.§,E§);
            if(!(_loc5_ && this))
            {
               if(§§pop() != null)
               {
                  addr49:
                  _loc3_ = this.§,E§;
                  if(_loc4_)
                  {
                     this.§9!C§();
                  }
                  loop0:
                  while(true)
                  {
                     do
                     {
                        if(!this.§,E§)
                        {
                           if(!(_loc5_ && param2))
                           {
                              param2.splice(param2.indexOf(_loc3_),1);
                           }
                           while(_loc4_)
                           {
                           }
                           continue loop0;
                           addr92:
                        }
                        while(true)
                        {
                           dispatchEvent(new §!"8§(§!"8§.CHANGE));
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr92);
                        }
                     }
                     while(false);
                     
                  }
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function §?k§(param1:Vector.<§7a§>, param2:Vector.<§7a§>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§7a§ = null;
         if(!_loc7_)
         {
            this.§9!C§();
            if(_loc6_)
            {
               if(this.§,E§ != null)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr31);
                  }
               }
            }
            loop0:
            for each(_loc3_ in param1)
            {
               if(!_loc7_)
               {
                  §§push(param2.indexOf(_loc3_) >= 0);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr158:
                           while(true)
                           {
                              §§push(_loc3_.getName() == this.mName);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(!§§pop());
                                 if(_loc6_)
                                 {
                                    addr125:
                                    if(!_loc6_)
                                    {
                                       continue;
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§`""§(_loc3_));
                                          while(§§pop())
                                          {
                                             while(true)
                                             {
                                                param2.push(_loc3_);
                                                loop6:
                                                while(true)
                                                {
                                                   _loc3_.§9!c§(this.§2!2§);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      addr82:
                                                      while(true)
                                                      {
                                                         this.§,E§ = _loc3_;
                                                         continue loop7;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                          addr135:
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr125);
                           }
                        }
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr158);
            }
            return;
         }
         addr31:
      }
      
      private function §9!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§,E§ != null)
            {
               loop0:
               while(!this.§`""§(this.§,E§))
               {
                  if(_loc1_)
                  {
                     this.§,E§ = null;
                  }
                  while(true)
                  {
                     dispatchEvent(new §!"8§(§!"8§.CHANGE));
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!(_loc2_ && this))
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      private function §`""§(param1:§7a§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         if(!(_loc3_ && param1))
         {
            _loc2_.§&"1§(this.§8!1§);
         }
         return _loc2_.§?!]§() < Math.max(this.§""+§.width,this.§""+§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
      }
      
      public function get object() : §7a§
      {
         return this.§,E§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§+<§.x;
      }
      
      public function get y() : Number
      {
         return this.§+<§.y;
      }
      
      public function get §4U§() : Number
      {
         return this.§5!P§.x;
      }
      
      public function get §5!Y§() : Number
      {
         return this.§5!P§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§0!>§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§2!2§;
      }
      
      public function get §%i§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,E§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function get borderColor() : uint
      {
         return this.§%"2§;
      }
      
      private function §=]§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop().indexOf("STONE") == -1)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  if(§§pop().indexOf("WOOD") != -1)
                  {
                     if(!_loc2_)
                     {
                        this.§%"2§ = this.§!">§;
                        addr102:
                        break;
                        addr102:
                     }
                     §§goto(addr102);
                  }
                  else
                  {
                     §§push(param1);
                     while(§§pop().indexOf("ICE") == -1)
                     {
                        §§push(param1);
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              if(§§pop().indexOf("PIG") != -1)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.§%"2§ = this.§9$§;
                                       addr44:
                                       if(_loc3_)
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop1;
                                             }
                                             break loop0;
                                          }
                                          break loop1;
                                          addr122:
                                       }
                                       break;
                                    }
                                    break loop1;
                                    addr85:
                                 }
                                 §§goto(addr44);
                              }
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     if(_loc3_ || _loc2_)
                     {
                        this.§%"2§ = this.§&2§;
                        §§goto(addr85);
                     }
                     else
                     {
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr102);
               }
               return;
            }
            this.§%"2§ = this.§7!Y§;
            §§goto(addr122);
         }
         §§goto(addr102);
      }
   }
}
