package §^L§
{
   import §'_§.Texture;
   import §-!>§.§4!T§;
   import §9!!§.Integer;
   import §?A§.LevelMain;
   
   public class §0!J§
   {
      
      public static const §5!+§:int = 0;
      
      public static const §8!j§:int = 6;
      
      public static const §2!0§:int = 7;
      
      public static const §!!-§:int = 8;
      
      public static const § K§:int = 3;
      
      public static const §&!2§:int = 5;
      
      public static const § !Z§:int = 2;
      
      public static const §<!S§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!+§ = 0;
            while(true)
            {
               §8!j§ = 6;
               loop1:
               while(true)
               {
                  §2!0§ = 7;
                  loop2:
                  while(true)
                  {
                     §!!-§ = 8;
                     while(true)
                     {
                        § K§ = 3;
                        addr96:
                        while(true)
                        {
                           §&!2§ = 5;
                           continue loop2;
                        }
                        addr55:
                        if(_loc1_ || §0!J§)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               return;
               addr38:
            }
         }
         while(true)
         {
            § !Z§ = 2;
            §§goto(addr53);
         }
         §§goto(addr38);
      }
      
      public var §4!W§:String;
      
      public var §4i§:int;
      
      protected var §&Q§:Integer;
      
      public var §`§:Number;
      
      public var §`5§:String;
      
      public var §!!T§:Number = 1;
      
      public var §^V§:Number;
      
      private var §'!T§:Boolean = false;
      
      private var §8@§:String;
      
      private var §6!E§:int;
      
      private var §>!V§:LevelItemShape;
      
      private var §^;§:LevelItemMaterial;
      
      private var §@C§:LevelItemSoundResource;
      
      public function §0!J§(param1:String, param2:int, param3:LevelItemMaterial, param4:LevelItemSoundResource, param5:LevelItemShape, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            super();
            while(true)
            {
               this.§4!W§ = param1;
               while(true)
               {
                  this.§4i§ = param2;
                  while(true)
                  {
                     this.§^;§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§8@§ = param12;
                        addr168:
                        while(true)
                        {
                           this.§6!E§ = param13;
                           addr163:
                           while(true)
                           {
                              this.§'!T§ = param11;
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               if(_loc15_ && param1)
               {
                  continue;
               }
               this.§&Q§ = new Integer(param6);
               §§goto(addr115);
            }
         }
         §§goto(addr94);
      }
      
      public function get front() : Boolean
      {
         return this.§'!T§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§8@§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§6!E§;
      }
      
      public function § V§() : int
      {
         return this.shape.§'!,§();
      }
      
      public function §@!#§() : int
      {
         return this.shape.§=!a§();
      }
      
      public function §>!4§() : int
      {
         return this.shape.§6w§();
      }
      
      public function §%!W§() : Number
      {
         return this.§^;§.getValue(LevelItemMaterial.§"!@§);
      }
      
      public function §>!h§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§?!3§));
      }
      
      public function §=;§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§4!_§));
      }
      
      public function §9!4§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§73§));
      }
      
      public function §]6§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§?!A§));
      }
      
      public function §"f§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§=!e§));
      }
      
      public function §=!V§() : Number
      {
         return Number(this.§^;§.getValue(LevelItemMaterial.§9!j§));
      }
      
      public function final() : int
      {
         return this.§`§;
      }
      
      public function get material() : LevelItemMaterial
      {
         return this.§^;§;
      }
      
      public function get shape() : LevelItemShape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§>!V§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  _loc1_ = §4!T§.§1t§.animationManager.getAnimation(this.§4!W§).getFrame(0).texture;
                  addr33:
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(LevelItemShape));
                     §§push(this.§4!W§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_ || this)
                     {
                        §§push(LevelMain.§!5§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc2_ && this))
                           {
                              addr94:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc3_)
                           {
                              §§push(§§pop() * LevelMain.§!5§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                        }
                        §§pop().§>!V§ = new §§pop().LevelItemShape(§§pop(),§§pop(),§§pop(),§§pop());
                        addr117:
                        return this.§>!V§;
                        addr115:
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr117);
         }
         §§goto(addr33);
      }
      
      public function get §3!,§() : LevelItemSoundResource
      {
         return this.§@C§;
      }
      
      public function get score() : int
      {
         return this.§&Q§.getValue();
      }
   }
}
