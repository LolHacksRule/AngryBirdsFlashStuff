package §0"B§
{
   import §!#C§.§#"E§;
   import §!#C§.§0#;§;
   import §!#C§.§1#b§;
   import §!#C§.§3" §;
   import §!#C§.§4!Q§;
   import §!#C§.§8##§;
   import §!#C§.§;!$§;
   import §&!_§.§+#`§;
   import §<!r§.§'##§;
   import §=E§.§<T§;
   import §>z§.ErrorPopup;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   
   public class §##G§ extends §8#o§
   {
      
      public static var §2"A§:§0#;§;
      
      public static const §!#;§:int = 10;
      
      public static const §4"Y§:int = 10;
      
      public static var §@!-§:Vector.<§3" §> = new Vector.<§3" §>();
      
      public static var §=#i§:Vector.<§;!$§> = new Vector.<§;!$§>();
      
      public static var §##F§:Array = [];
      
      private static var §0"m§:Object = {};
       
      
      protected var §1#h§:String;
      
      protected var §]#X§:String;
      
      protected var §&"K§:Boolean = false;
      
      protected var §;'§:Boolean = false;
      
      protected var §8$%§:Boolean = false;
      
      protected var §%u§:int = -1;
      
      private var §5#I§:Number = 0;
      
      public function §##G§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         this.§1#h§ = param1;
         this.§]#X§ = param2;
         this.§&"K§ = param4;
         §]!v§ = !!param6 ? URLRequestMethod.GET : URLRequestMethod.POST;
         this.§;'§ = param7;
         this.§8$%§ = param8;
         super(param3);
         if(param5)
         {
            §#!u§ = new §;!y§(0,param5.players.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §8!7§(param1:String) : String
      {
         return §0"m§[param1];
      }
      
      public function get §3'§() : int
      {
         return this.§%u§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§1#b§ = null;
         var _loc7_:§0#;§ = null;
         var _loc3_:Array = new Array();
         var _loc4_:Boolean = false;
         if(param1.players)
         {
            _loc3_ = param1.players;
         }
         else if(param1.scores)
         {
            _loc3_ = param1.scores;
            _loc4_ = true;
         }
         else if(param1.p)
         {
            _loc3_ = param1.p;
            _loc4_ = true;
         }
         var _loc5_:Object = {"players":[]};
         this.§%u§ = -1;
         var _loc6_:int = _loc3_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc3_[_loc6_].r = _loc6_ + 1;
            if((_loc7_ = §0#;§.§5+§(_loc3_[_loc6_],_loc4_,this.§8$%§)) is §#"E§ && §<T§.§'!"§(_loc7_.userId))
            {
               --this.§%u§;
            }
            else
            {
               if(_loc7_.userId == this.§1#h§)
               {
                  this.§%u§ = _loc6_;
                  §2"A§ = _loc7_;
               }
               if(!(_loc7_ is §#"E§))
               {
                  _loc2_ = _loc2_ || _loc7_ as §1#b§;
               }
               if(_loc7_.avatarString)
               {
                  §0"m§[_loc7_.userId] = _loc7_.avatarString;
               }
               _loc5_.players.unshift(_loc7_);
            }
            _loc6_--;
         }
         _loc5_.totalItemCount = _loc5_.players.length;
         super.dataLoaded(_loc5_);
         this.§5#I§ = AngryBirdsBase.singleton.dataModel as §4!Q§ && (AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime ? Number((AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime.synchronizedTimeStamp) : Number(0);
      }
      
      public function §>#^§(param1:§1#b§) : §1#b§
      {
         if(this.§&"K§)
         {
            return new §8##§(this.§1#h§,this.§]#X§,!!§2"A§ ? §2"A§.avatarString : "",0,0,!!param1 ? int(param1.rank + 1) : 1);
         }
         return new §;!$§(this.§1#h§,this.§]#X§,!!§2"A§ ? §2"A§.avatarString : "",0,0,0,!!param1 ? int(param1.rank + 1) : 1,null,0,null);
      }
      
      public function §#"Q§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §#"E§) && (data[_loc2_] as §1#b§).userId == param1)
            {
               return (data[_loc2_] as §1#b§).rank;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function § "R§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §#"E§) && (data[_loc2_] as §;!$§).rank == 2)
            {
               return (data[_loc2_] as §;!$§).§,$&§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §!#L§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §;!$§).userId != this.§1#h§ && !(data[_loc3_] is §#"E§) && this.§1#h§ && (data[_loc3_] as §;!$§).§,$&§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §"#t§() : §;!$§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§#"Q§(this.§1#h§);
         if(_loc1_ == 1)
         {
            return null;
         }
         if(_loc1_ == -1)
         {
            _loc1_ = data.length + 1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_] is §;!$§ && (data[_loc2_] as §;!$§).rank == _loc1_ - 1)
            {
               return data[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      override protected function onUrlLoaderComplete(param1:Event) : void
      {
         var e:Event = param1;
         try
         {
            if(e.target.data.hasOwnProperty("st"))
            {
               delete e.target.data["st"];
            }
            super.onUrlLoaderComplete(e);
         }
         catch(err:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t load highscore list.\n" + (e.target as URLLoader).data + "\nError code: " + §+#`§.§ !R§));
         }
      }
      
      public function §1#I§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§;!$§ = null;
         var _loc5_:§;!$§;
         if(!(_loc5_ = data[this.§%u§]))
         {
            return 0;
         }
         _loc5_.§4!6§ = param2;
         _loc5_.§,$&§ = param1;
         _loc5_.§!!a§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §#"E§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§1#h§)
               {
                  if(!_loc7_.§^!w§)
                  {
                     if(_loc7_.rank <= _loc5_.rank)
                     {
                        if(_loc5_.§,$&§ > _loc7_.§,$&§ || _loc5_.§,$&§ == _loc7_.§,$&§ && _loc5_.§!!a§ > _loc7_.§!!a§)
                        {
                           param4.push(_loc7_);
                           --_loc5_.rank;
                           ++_loc7_.rank;
                           _loc7_.beaten = true;
                           if(!_loc5_.targetOffset)
                           {
                              _loc5_.targetOffset = -1;
                           }
                           else
                           {
                              --_loc5_.targetOffset;
                           }
                           if(!_loc7_.targetOffset)
                           {
                              _loc7_.targetOffset = 1;
                           }
                           else
                           {
                              ++_loc7_.targetOffset;
                           }
                        }
                     }
                  }
               }
            }
            _loc6_--;
         }
         this.§%u§ = _loc5_.rank - 1;
         return _loc5_.rank;
      }
      
      public function §5!&§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §8##§).userId == param1)
               {
                  return (data[_loc2_] as §8##§).§?"C§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §'W§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §8##§).userId == param1)
               {
                  return (data[_loc2_] as §8##§).§7M§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function § #P§(param1:String) : Number
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §;!$§).userId == param1)
               {
                  return (data[_loc2_] as §;!$§).§,$&§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function set §<"k§(param1:Boolean) : void
      {
         this.§&"K§ = param1;
      }
      
      public function get §^!H§() : Boolean
      {
         return this.§;'§;
      }
      
      public function get §7"h§() : Boolean
      {
         return this.§8$%§;
      }
      
      public function get §%$&§() : Number
      {
         return this.§5#I§;
      }
      
      public function set §%$&§(param1:Number) : void
      {
         this.§5#I§ = param1;
      }
      
      public function §8"F§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - this.§5#I§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §'##§.§7#%§)
         {
            return true;
         }
         this.§5#I§ = _loc1_;
         return false;
      }
      
      public function §>$>§(param1:§;!$§) : void
      {
         data.push(param1);
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_].userId == this.§1#h§)
            {
               this.§%u§ = _loc2_;
               break;
            }
            _loc2_++;
         }
      }
   }
}
