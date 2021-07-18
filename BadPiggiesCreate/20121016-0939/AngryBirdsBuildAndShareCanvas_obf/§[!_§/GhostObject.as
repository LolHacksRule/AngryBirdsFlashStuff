package §[!_§
{
   import §+!o§.§?"-§;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §62§.§0!t§;
   import §7r§.§=q§;
   import §default§.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §with§:Point;
      
      private var §]u§:b2Vec2;
      
      private var §]$§:Number;
      
      private var §0#§:Rectangle;
      
      private var §,!S§:b2Vec2;
      
      private var mName:String;
      
      private var §2[§:b2Transform;
      
      private var §!&§:Sprite;
      
      private var §;6§:§=q§;
      
      private var §!3§:uint = 16777215;
      
      private var §^!5§:uint;
      
      private const §#"4§:uint = 14218751;
      
      private const §!!`§:uint = 16237696;
      
      private const §-!f§:uint = 13882323;
      
      private var §#7§:uint = 12318377;
      
      public function GhostObject(param1:§=q§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!5§ = this.§!3§;
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§!&§ = param1.§7M§();
                  loop2:
                  for(; !_loc2_; if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  })
                  {
                     this.§with§ = new Point(this.§!&§.x,this.§!&§.y);
                     loop3:
                     while(true)
                     {
                        this.§]u§ = param1.§9!l§();
                        while(true)
                        {
                           this.§]$§ = this.§!&§.rotation;
                           addr118:
                           while(true)
                           {
                              this.§0#§ = param1.§]!&§();
                              continue loop1;
                           }
                           addr85:
                           if(_loc3_ || _loc2_)
                           {
                              this.§2[§ = param1.§[!M§();
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr68:
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr85);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.mName = param1.getName();
                                          continue loop8;
                                       }
                                       addr98:
                                    }
                                 }
                                 continue loop1;
                                 addr60:
                                 this.set(this.mName);
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr118);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function refresh(param1:§?"-§, param2:Vector.<§=q§>) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§=q§ = null;
         if(!(_loc4_ && param1))
         {
            §§push(this.§;6§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  addr50:
                  _loc3_ = this.§;6§;
                  if(_loc5_)
                  {
                     this.§8"<§();
                     while(true)
                     {
                        addr70:
                        do
                        {
                           if(!this.§;6§)
                           {
                              while(true)
                              {
                                 param2.splice(param2.indexOf(_loc3_),1);
                                 addr90:
                                 while(true)
                                 {
                                 }
                              }
                              addr74:
                           }
                           while(true)
                           {
                              dispatchEvent(new §0!t§(§0!t§.CHANGE));
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr74);
                              }
                              §§goto(addr90);
                           }
                        }
                        while(!_loc4_);
                        
                     }
                  }
                  while(false)
                  {
                     §§goto(addr70);
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function §1!,§(param1:Vector.<§=q§>, param2:Vector.<§=q§>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§=q§ = null;
         if(_loc6_ || param1)
         {
            this.§8"<§();
            if(_loc6_)
            {
               if(this.§;6§ != null)
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr41);
                  }
               }
            }
            loop0:
            for each(_loc3_ in param1)
            {
               if(_loc6_ || this)
               {
                  §§push(param2.indexOf(_loc3_) >= 0);
                  if(!(_loc7_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(_loc3_.getName() == this.mName);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(!§§pop());
                                 if(_loc6_ || param1)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop8;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§27§(_loc3_));
                                          break loop7;
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       addr144:
                                       addr144:
                                       while(true)
                                       {
                                          param2.push(_loc3_);
                                          addr147:
                                          while(true)
                                          {
                                             _loc3_.§=!J§(this.§2[§);
                                             while(_loc6_)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   while(true)
                                                   {
                                                      this.§;6§ = _loc3_;
                                                      do
                                                      {
                                                         dispatchEvent(new §0!t§(§0!t§.CHANGE));
                                                      }
                                                      while(_loc7_);
                                                      
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 break;
                              }
                              break;
                           }
                           while(§§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 §§goto(addr144);
                              }
                              §§goto(addr147);
                           }
                           continue loop0;
                        }
                        addr172:
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr172);
               }
               §§goto(addr144);
            }
            return;
         }
         addr41:
      }
      
      private function §8"<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§;6§ != null)
            {
               if(_loc1_ || this)
               {
                  addr59:
                  if(!this.§27§(this.§;6§))
                  {
                     if(_loc1_)
                     {
                        this.§;6§ = null;
                     }
                  }
                  §§goto(addr19);
               }
               do
               {
                  dispatchEvent(new §0!t§(§0!t§.CHANGE));
               }
               while(_loc2_ && _loc2_);
               
            }
            addr19:
            return;
         }
         §§goto(addr59);
      }
      
      private function §27§(param1:§=q§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         if(!(_loc4_ && param1))
         {
            _loc2_.§5!]§(this.§,!S§);
         }
         return _loc2_.§`g§() < Math.max(this.§0#§.width,this.§0#§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
      }
      
      public function get object() : §=q§
      {
         return this.§;6§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§with§.x;
      }
      
      public function get y() : Number
      {
         return this.§with§.y;
      }
      
      public function get §6!j§() : Number
      {
         return this.§]u§.x;
      }
      
      public function get §8i§() : Number
      {
         return this.§]u§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§]$§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§2[§;
      }
      
      public function get §!6§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;6§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get borderColor() : uint
      {
         return this.§^!5§;
      }
      
      private function set(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop().indexOf("STONE") == -1)
            {
               §§push(param1);
               loop1:
               while(_loc2_)
               {
                  if(§§pop().indexOf("WOOD") == -1)
                  {
                     §§push(param1);
                     while(§§pop().indexOf("ICE") == -1)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        if(§§pop().indexOf("PIG") != -1)
                        {
                           if(!(_loc3_ && param1))
                           {
                              this.§^!5§ = this.§#7§;
                           }
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr24);
                              }
                              addr110:
                              if(!_loc3_)
                              {
                                 this.§^!5§ = this.§!!`§;
                                 addr24:
                                 return;
                                 addr116:
                              }
                              else
                              {
                                 §§goto(addr24);
                                 addr136:
                              }
                              §§goto(addr24);
                              §§goto(addr24);
                           }
                           addr99:
                        }
                        §§goto(addr24);
                     }
                     if(_loc2_)
                     {
                        if(!(_loc2_ || param1))
                        {
                           break loop0;
                        }
                        this.§^!5§ = this.§#"4§;
                        §§goto(addr99);
                     }
                     else
                     {
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr110);
               }
            }
            this.§^!5§ = this.§-!f§;
            §§goto(addr136);
         }
         §§goto(addr95);
      }
   }
}
