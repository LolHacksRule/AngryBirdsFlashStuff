package §3D§
{
   import §#S§.§?!?§;
   import §+!F§.§1!D§;
   import §5!G§.§&2§;
   import §]!v§.§+!`§;
   import §]!v§.Sprite;
   
   public class §8"A§
   {
      
      public static const §7"%§:String = "CutScene_Type_Intro";
      
      public static const §+3§:String = "CutScene_Type_Outro";
      
      public static const §#! §:String = "CutScene_Type_Final_Outro";
       
      
      private var §=$§:§?!?§;
      
      private var §`"§:String;
      
      private var §@!J§:Vector.<§3T§>;
      
      private var §=!S§:Number;
      
      private var §>" §:Number;
      
      private var §=!c§:Number;
      
      private var §+B§:Number;
      
      private var §`b§:Sprite;
      
      private var §;!d§:Boolean = true;
      
      private var §catch§:uint;
      
      private var §6!&§:Boolean;
      
      private var §66§:§+!`§;
      
      private var §&!S§:§+!`§;
      
      public function §8"A§(param1:Object, param2:String)
      {
         var _loc3_:§3T§ = null;
         var _loc4_:Object = null;
         this.§@!J§ = new Vector.<§3T§>();
         super();
         this.§=!S§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§`"§ = §7"%§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§`"§ = §+3§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§1!<§(_loc4_);
               if(_loc3_)
               {
                  this.§@!J§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§@!J§)
            {
               if(_loc3_ is §9n§)
               {
                  (_loc3_ as §9n§).setSize(this.§=!c§,this.§+B§);
                  (_loc3_ as §9n§).§5!C§ = this.§;!d§;
               }
               else if(_loc3_ is §50§)
               {
                  (_loc3_ as §50§).setSize(this.§=!c§,this.§+B§);
                  (_loc3_ as §50§).§^i§ = this.§;!d§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§`b§;
      }
      
      private function §1!<§(param1:Object) : §3T§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §3T§.§7!<§:
               return new §50§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §3T§.§%!^§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §9n§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §3T§.§ !E§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §;z§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §3T§.§8c§:
               return new § K§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §3T§.END:
               this.§>" § = param1.time * 1000;
               break;
            case §3T§.§="K§:
               this.§=!c§ = param1.width;
               this.§+B§ = param1.height;
               break;
            case §3T§.§[!?§:
               this.§;!d§ = false;
               break;
            case §3T§.§"!c§:
               this.§;!d§ = true;
               break;
            case §3T§.§ z§:
               this.§catch§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§`b§)
         {
            this.§`b§.dispose();
            this.§`b§ = null;
         }
         this.§@!J§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§`b§)
         {
            this.§`b§ = new Sprite();
         }
         this.§=!S§ += param1;
         var _loc2_:int = this.§@!J§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§@!J§[_loc2_].update(this.§=!S§,this.§`b§,this.§=$§))
            {
               this.§@!J§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§`3§();
         this.§2"E§();
         return this.§=!S§ < this.§>" §;
      }
      
      private function §2"E§() : void
      {
         var _loc1_:int = §1!D§.§-H§.height;
         var _loc2_:Number = §&2§.§3"J§;
         var _loc3_:Number = §&2§.§0"@§;
         var _loc4_:int = (_loc1_ - this.§+B§ * _loc2_) / _loc2_;
         this.§`b§.y = _loc4_ >> 1;
      }
      
      private function §`3§() : void
      {
         §1!D§.§7!T§.color = this.§catch§;
      }
      
      public function clone(param1:§?!?§) : §8"A§
      {
         var _loc3_:§3T§ = null;
         var _loc2_:§8"A§ = new §8"A§(null,null);
         for each(_loc3_ in this.§@!J§)
         {
            _loc2_.§@!J§.push(_loc3_.clone());
         }
         _loc2_.§=!S§ = this.§=!S§;
         _loc2_.§>" § = this.§>" §;
         _loc2_.§=!c§ = this.§=!c§;
         _loc2_.§+B§ = this.§+B§;
         _loc2_.§;!d§ = this.§;!d§;
         _loc2_.§catch§ = this.§catch§;
         _loc2_.§`"§ = this.§`"§;
         _loc2_.§=$§ = param1;
         return _loc2_;
      }
      
      public function get §%G§() : String
      {
         return this.§`"§;
      }
      
      public function set §%G§(param1:String) : void
      {
         this.§`"§ = param1;
      }
   }
}
