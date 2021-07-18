package §]!d§
{
   public class §@"C§ implements §&[§
   {
       
      
      private var §`!2§:uint;
      
      private var §##g§:Number;
      
      private var §;$9§:Vector.<§73§>;
      
      private var §-#N§:int = 0;
      
      private var §[!"§:uint;
      
      private var §<b§:uint;
      
      private var §]#K§:Boolean = false;
      
      private var §`#3§:Vector.<§73§>;
      
      public function §@"C§(param1:Array, param2:uint, param3:Number)
      {
         var _loc5_:§73§ = null;
         this.§;$9§ = new Vector.<§73§>();
         this.§`#3§ = new Vector.<§73§>();
         super();
         this.§`!2§ = param2;
         this.§##g§ = param3;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = new §73§(this,param1[_loc4_]);
            this.§;$9§.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§73§ = null;
         if(this.§]#K§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;$9§.length)
            {
               _loc3_ = this.§;$9§[_loc2_];
               if(_loc3_.§!f§())
               {
                  _loc3_.update(param1);
               }
               _loc2_++;
            }
            if(this.§-#N§ < this.§`!2§)
            {
               this.§[!"§ += param1;
               if(this.§[!"§ >= this.§<b§)
               {
                  this.§7!!§();
                  this.§[!"§ = 0;
               }
            }
         }
      }
      
      public function start() : void
      {
         if(this.§;$9§.length == 0)
         {
            return;
         }
         this.§[!"§ = 0;
         this.§-#N§ = 0;
         this.§<b§ = 0;
         this.§8#W§();
         this.§^"_§();
         this.§]#K§ = true;
      }
      
      public function stop() : void
      {
         var _loc2_:§73§ = null;
         this.§]#K§ = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`#3§.length)
         {
            _loc2_ = this.§`#3§[_loc1_];
            _loc2_.stop();
            _loc1_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:§73§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;$9§.length)
         {
            _loc2_ = this.§;$9§[_loc1_];
            _loc2_.dispose();
            _loc2_ = null;
            _loc1_++;
         }
         this.§;$9§ = null;
      }
      
      public function §+"G§(param1:§73§) : void
      {
         --this.§-#N§;
         if(this.§-#N§ < 0)
         {
            this.§-#N§ = 0;
         }
      }
      
      private function §7!!§() : void
      {
         if(this.§`#3§.length == 0)
         {
            this.§8#W§();
         }
         var _loc1_:int = Math.floor(Math.random() * this.§`#3§.length);
         var _loc2_:§73§ = this.§`#3§[_loc1_];
         _loc2_.play();
         this.§`#3§.splice(this.§`#3§.indexOf(_loc2_),1);
         ++this.§-#N§;
         this.§^"_§();
      }
      
      private function §8#W§() : void
      {
         var _loc2_:§73§ = null;
         this.§`#3§.splice(0,this.§`#3§.length);
         var _loc1_:int = 0;
         while(_loc1_ < this.§;$9§.length)
         {
            _loc2_ = this.§;$9§[_loc1_];
            this.§`#3§.push(_loc2_);
            _loc1_++;
         }
      }
      
      private function §^"_§() : void
      {
         this.§<b§ = Number(this.§##g§ + Math.random() * 3) * 1000;
      }
   }
}
