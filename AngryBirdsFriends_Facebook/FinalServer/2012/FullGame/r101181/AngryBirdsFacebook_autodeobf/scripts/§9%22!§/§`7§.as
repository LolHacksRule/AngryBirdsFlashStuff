package §9"!§
{
   import §1!$§.Sprite;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   
   public class §`7§ extends §;!M§
   {
      
      private static const §&!=§:Number = 10;
      
      public static const §-U§:Number = 1.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §&!=§ = 10;
         }
         do
         {
            §-U§ = 1;
         }
         while(_loc1_);
         
      }
      
      private var §9!'§:§"m§ = null;
      
      private var §0b§:Object;
      
      public function §`7§(param1:§2a§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§0b§ = new Object();
            do
            {
               super(param1,param2,param3,param4,param5);
            }
            while(_loc7_);
            
         }
      }
      
      public function §4!]§(param1:Number, param2:Number, param3:Boolean = true) : §"m§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §]!b§ = false;
            loop0:
            while(true)
            {
               §'V§ = -1;
               addr202:
               while(true)
               {
                  this.§0b§.x = §,!k§;
                  continue loop0;
               }
            }
         }
         §§goto(addr162);
      }
      
      private function §3!i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9!'§ = null;
            loop0:
            while(true)
            {
               §@P§ = this.§0b§.rotation;
               while(true)
               {
                  setPosition(this.§0b§.x,this.§0b§.y);
                  addr44:
                  if(!(_loc2_ && this))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §]!b§ = false;
            while(!_loc2_)
            {
               §'V§ = -1;
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr44);
            }
         }
         §§goto(addr68);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(this.§9!'§);
            while(true)
            {
               if(§§pop() == null)
               {
                  super.update(param1,param2,param3);
                  if(_loc5_)
                  {
                     break;
                  }
                  if(!_loc5_)
                  {
                     if(_loc4_ || param1)
                     {
                        §§goto(addr24);
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc4_ || this)
                        {
                           while(true)
                           {
                              §,!7§();
                           }
                           addr107:
                        }
                        else
                        {
                           while(true)
                           {
                              §@P§ = this.§0b§.rotation;
                              continue loop1;
                           }
                           addr112:
                        }
                     }
                  }
                  while(_loc5_ && param1)
                  {
                     §§goto(addr117);
                  }
                  continue;
               }
               §§goto(addr112);
            }
            addr24:
            return;
         }
         §§goto(addr107);
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§9!'§ != null)
            {
               if(!_loc2_)
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr44:
                  return super.applyGravity(param1);
               }
               return §§pop();
            }
         }
         §§goto(addr44);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§9!'§ == null)
            {
               do
               {
                  super.updateGroundControl(param1);
               }
               while(_loc3_ && _loc2_);
               
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
