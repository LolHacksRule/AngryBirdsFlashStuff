package §]">§
{
   import §"!&§.§+W§;
   import §'4§.§1!+§;
   import §'4§.§3!n§;
   import §7!8§.Sprite;
   import §=u§.§!D§;
   import §=u§.§3!m§;
   import §=u§.§5!9§;
   
   public class §1!f§ extends §1!+§
   {
      
      private static const §+d§:Number = 20;
      
      private static const §@J§:Number = 720;
      
      public static const §`!s§:Number = 1.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §+d§ = 20;
            do
            {
               §@J§ = 720;
               do
               {
                  §`!s§ = 1.5;
               }
               while(_loc1_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      private var §@!c§:Object;
      
      private var §5%§:§5!9§ = null;
      
      public function §1!f§(param1:§3!n§, param2:Sprite, param3:String, param4:§+W§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            this.§@!c§ = new Object();
         }
         do
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
         while(!_loc9_);
         
      }
      
      public function §>V§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §@!J§ = false;
            loop0:
            while(true)
            {
               §5d§ = -1;
               while(true)
               {
                  this.§@!c§.x = param1;
                  while(!(_loc7_ && this))
                  {
                     this.§@!c§.y = param2;
                     while(true)
                     {
                        this.§@!c§.rotation = §0!$§;
                        addr144:
                        loop4:
                        while(true)
                        {
                           if(!param5)
                           {
                              this.§5%§ = §3!m§.§[!1§.§1"<§(null,null,null,§`!s§);
                              loop5:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 addr138:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§5%§ = §3!m§.§[!1§.§"!D§(§3!m§.§[!1§.§7!$§(§3!m§.§[!1§.§1"<§(this.§@!c§,{"y":param4 - §+d§},{"y":param2},§`!s§ / 2,§!D§.§!!R§),§3!m§.§[!1§.§1"<§(this.§@!c§,{"y":param4},{"y":param4 - §+d§},§`!s§ / 2,§!D§.§=!t§)),§3!m§.§[!1§.§1"<§(this.§@!c§,{
                                 "x":param3,
                                 "rotation":§0!$§ - §@J§
                              },null,§`!s§));
                              §§goto(addr138);
                           }
                        }
                     }
                     if(!(_loc7_ && param1))
                     {
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      private function §0Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5%§ = null;
            loop0:
            while(true)
            {
               §1"3§ = this.§@!c§.rotation;
               while(true)
               {
                  §#!O§ = §0!$§;
                  continue loop0;
                  loop5:
                  while(!(_loc2_ && this))
                  {
                     §5d§ = -1;
                     if(!_loc2_)
                     {
                        addr29:
                        if(_loc1_ || _loc1_)
                        {
                           return;
                        }
                        addr68:
                        while(_loc1_)
                        {
                           §@!J§ = false;
                           continue loop5;
                           §§goto(addr29);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            setPosition(this.§@!c§.x,this.§@!c§.y);
            §§goto(addr68);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§5%§);
            if(_loc4_)
            {
               if(§§pop() == null)
               {
                  super.update(param1,param2,param3);
                  if(_loc4_ || this)
                  {
                     if(_loc5_)
                     {
                        loop0:
                        while(true)
                        {
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           if(!(_loc5_ && param2))
                           {
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 addr96:
                                 while(true)
                                 {
                                    §§push(this.§5%§);
                                    if(!(_loc5_ && this))
                                    {
                                       if(§§pop().isPaused)
                                       {
                                          addr117:
                                          while(true)
                                          {
                                             §§push(this.§5%§);
                                             addr119:
                                             while(true)
                                             {
                                                §§pop().play();
                                                addr120:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr117:
                                       }
                                       while(true)
                                       {
                                          setPosition(this.§@!c§.x,this.§@!c§.y);
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr119);
                                 }
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr120);
                        }
                        this.updateRenderer();
                        addr44:
                     }
                     return;
                  }
                  §§goto(addr44);
               }
               §§goto(addr96);
            }
            §§goto(addr119);
         }
         §§goto(addr117);
      }
      
      override public function updateRenderer() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§5%§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        addr66:
                        while(§§pop())
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           addr77:
                           if(!(_loc2_ && this))
                           {
                              §§goto(addr76);
                           }
                           continue loop0;
                        }
                        super.updateRenderer();
                        if(_loc2_)
                        {
                           §§goto(addr77);
                        }
                        return;
                        addr64:
                     }
                  }
               }
               addr95:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         addr76:
      }
      
      public function §%">§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§5%§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr38:
                  §§push(true);
                  if(_loc1_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr38);
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§5%§ != null)
            {
               if(!_loc3_)
               {
                  §§goto(addr44);
               }
            }
            return super.applyGravity(param1);
         }
         addr44:
         return false;
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§5%§ != null)
            {
               if(_loc2_)
               {
                  return;
               }
               while(true)
               {
               }
               addr57:
            }
            while(true)
            {
               super.updateGroundControl(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr57);
            }
         }
      }
   }
}
