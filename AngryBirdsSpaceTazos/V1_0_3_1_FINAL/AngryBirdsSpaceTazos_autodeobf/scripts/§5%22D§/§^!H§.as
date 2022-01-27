package §5"D§
{
   import §!u§.§'!X§;
   import §!u§.§8"#§;
   import §3R§.§<!]§;
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §6!M§.§=!P§;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   import flash.geom.Point;
   
   public class §^!H§ extends §1"G§
   {
       
      
      private var §]!r§:Boolean;
      
      private var §for§:Boolean;
      
      private var §'8§:Boolean;
      
      private var §["C§:int;
      
      public function §^!H§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function §<b§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §58§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §<!!§() : Boolean
      {
         return this.§for§;
      }
      
      public function set §9!^§(param1:int) : void
      {
         this.§["C§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §4! §(param1:§0!5§) : void
      {
         if(!this.§]!r§ && §7J§ > §<!]§.§<m§)
         {
            this.§]!r§ = true;
            param1.§`#§(true);
         }
      }
      
      protected function move(param1:Number, param2:§0!5§) : void
      {
         var _loc3_:int = 1;
         if(this.§for§)
         {
            this.§ "D§(§<!]§.§?`§ * param1);
            _loc3_ = -1;
            if(§7J§ > §<!]§.§3!§ && !this.§'8§)
            {
               this.§+p§(param2);
            }
         }
         else
         {
            this.§0o§(param2);
         }
         § "5§(param1,new Point(1,_loc3_ * §<!]§.§;!d§),§<!]§.§1!L§);
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§4! §(param2);
         this.§,s§(param2);
         this.move(param1,param2);
      }
      
      protected function §,s§(param1:§0!5§) : void
      {
         param1.§'!f§(§8"#§.§1q§,§'!X§.§=!O§,§8"#§.§^;§,§9B§().GetPosition().x - 3 + Math.random() * (3 * 2),§9B§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§8"#§.§3!j§(itemName),0,0,1,0,4);
      }
      
      private function §0o§(param1:§0!5§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§9B§().GetPosition().y >= -5.5)
         {
            this.§for§ = true;
            _loc2_ = §<!]§.§3"0§;
            _loc3_ = §<!]§.§`"<§;
            _loc4_ = §<!]§.§@"H§;
            param1.§"!B§(true,_loc2_,_loc3_,_loc4_);
            param1.§]k§();
            §2!;§(§=!P§.§>d§);
            this.§7g§(param1);
            this.§]q§(param1);
         }
      }
      
      protected function §7g§(param1:§0!5§) : void
      {
         var _loc3_:§"![§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §"![§;
            if(_loc3_ && _loc3_.id == this.§["C§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §]q§(param1:§0!5§) : void
      {
         var _loc3_:§9V§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §9V§;
            if(_loc3_)
            {
               _loc3_.§9B§().SetAwake(true);
               _loc3_.§9B§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§`$§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §+p§(param1:§0!5§) : void
      {
         var _loc3_:§9V§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §9V§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§'8§ = true;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override protected function fly() : void
      {
      }
      
      override protected function specialPower(param1:§0!5§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function § "D§(param1:Number) : void
      {
         var _loc2_:Number = §<b§(§9B§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §58§(_loc2_);
         §9B§().SetAngle(_loc2_);
      }
   }
}
