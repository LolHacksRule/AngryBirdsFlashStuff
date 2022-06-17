package § "g§
{
   import §+"u§.§^"C§;
   import §+#B§.§ "f§;
   import §-"h§.§5!b§;
   import §?!N§.ErrorPopup;
   import §]"'§.§+!!§;
   import §]"'§.§0!S§;
   import §]"'§.§8!a§;
   import §]"'§.§@"%§;
   import §]"'§.§`!V§;
   import §]"'§.§`#o§;
   import §]"'§.§default§;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   
   public class §5"D§ extends §[!"§
   {
      
      public static var §;$ §:§8!a§;
      
      public static const §`B§:int = 10;
      
      public static const §0"B§:int = 10;
      
      public static var §[§:Vector.<§default§> = new Vector.<§default§>();
      
      public static var §""^§:Vector.<§+!!§> = new Vector.<§+!!§>();
      
      public static var §4"L§:Array = [];
      
      private static var §]">§:Object = {};
       
      
      protected var §0$3§:String;
      
      protected var §4!$§:String;
      
      protected var §""d§:Boolean = false;
      
      protected var §6$,§:Boolean = false;
      
      protected var §^d§:Boolean = false;
      
      protected var §=J§:int = -1;
      
      private var §6#B§:Number = 0;
      
      public function §5"D§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         this.§0$3§ = param1;
         this.§4!$§ = param2;
         this.§""d§ = param4;
         §<#]§ = !!param6 ? URLRequestMethod.GET : URLRequestMethod.POST;
         this.§6$,§ = param7;
         this.§^d§ = param8;
         super(param3);
         if(param5)
         {
            §5#n§ = new §5#,§(0,param5.players.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §,s§(param1:String) : String
      {
         return §]">§[param1];
      }
      
      public function get §[0§() : int
      {
         return this.§=J§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§0!S§ = null;
         var _loc7_:§8!a§ = null;
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
         this.§=J§ = -1;
         var _loc6_:int = _loc3_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc3_[_loc6_].r = _loc6_ + 1;
            if((_loc7_ = §8!a§.§]"B§(_loc3_[_loc6_],_loc4_,this.§^d§)) is §`!V§ && §5!b§.§"!$§(_loc7_.userId))
            {
               --this.§=J§;
            }
            else
            {
               if(_loc7_.userId == this.§0$3§)
               {
                  this.§=J§ = _loc6_;
                  §;$ § = _loc7_;
               }
               if(!(_loc7_ is §`!V§))
               {
                  _loc2_ = _loc2_ || _loc7_ as §0!S§;
               }
               if(_loc7_.avatarString)
               {
                  §]">§[_loc7_.userId] = _loc7_.avatarString;
               }
               _loc5_.players.unshift(_loc7_);
            }
            _loc6_--;
         }
         _loc5_.totalItemCount = _loc5_.players.length;
         super.dataLoaded(_loc5_);
         this.§6#B§ = AngryBirdsBase.singleton.dataModel as §@"%§ && (AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime ? Number((AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime.synchronizedTimeStamp) : Number(0);
      }
      
      public function §;#§(param1:§0!S§) : §0!S§
      {
         if(this.§""d§)
         {
            return new §`#o§(this.§0$3§,this.§4!$§,!!§;$ § ? §;$ §.avatarString : "",0,0,!!param1 ? int(param1.rank + 1) : 1);
         }
         return new §+!!§(this.§0$3§,this.§4!$§,!!§;$ § ? §;$ §.avatarString : "",0,0,0,!!param1 ? int(param1.rank + 1) : 1,null,0,null);
      }
      
      public function §=?§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §`!V§) && (data[_loc2_] as §0!S§).userId == param1)
            {
               return (data[_loc2_] as §0!S§).rank;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §9!R§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §`!V§) && (data[_loc2_] as §+!!§).rank == 2)
            {
               return (data[_loc2_] as §+!!§).§>"t§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §1#k§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §+!!§).userId != this.§0$3§ && !(data[_loc3_] is §`!V§) && this.§0$3§ && (data[_loc3_] as §+!!§).§>"t§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §,!i§() : §+!!§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§=?§(this.§0$3§);
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
            if(data[_loc2_] is §+!!§ && (data[_loc2_] as §+!!§).rank == _loc1_ - 1)
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
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t load highscore list.\n" + (e.target as URLLoader).data + "\nError code: " + § "f§.§[$3§));
         }
      }
      
      public function §38§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§+!!§ = null;
         var _loc5_:§+!!§;
         if(!(_loc5_ = data[this.§=J§]))
         {
            return 0;
         }
         _loc5_.§%#f§ = param2;
         _loc5_.§>"t§ = param1;
         _loc5_.§[$1§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §`!V§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§0$3§)
               {
                  if(!_loc7_.§5$6§)
                  {
                     if(_loc7_.rank <= _loc5_.rank)
                     {
                        if(_loc5_.§>"t§ > _loc7_.§>"t§ || _loc5_.§>"t§ == _loc7_.§>"t§ && _loc5_.§[$1§ > _loc7_.§[$1§)
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
         this.§=J§ = _loc5_.rank - 1;
         return _loc5_.rank;
      }
      
      public function §+"b§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §`#o§).userId == param1)
               {
                  return (data[_loc2_] as §`#o§).§`$1§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §3V§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §`#o§).userId == param1)
               {
                  return (data[_loc2_] as §`#o§).§-$E§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §`#A§(param1:String) : Number
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §+!!§).userId == param1)
               {
                  return (data[_loc2_] as §+!!§).§>"t§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function set §<#5§(param1:Boolean) : void
      {
         this.§""d§ = param1;
      }
      
      public function get §0#?§() : Boolean
      {
         return this.§6$,§;
      }
      
      public function get §;#<§() : Boolean
      {
         return this.§^d§;
      }
      
      public function get §1#y§() : Number
      {
         return this.§6#B§;
      }
      
      public function set §1#y§(param1:Number) : void
      {
         this.§6#B§ = param1;
      }
      
      public function §6#f§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - this.§6#B§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §^"C§.§,";§)
         {
            return true;
         }
         this.§6#B§ = _loc1_;
         return false;
      }
      
      public function §0"_§(param1:§+!!§) : void
      {
         data.push(param1);
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_].userId == this.§0$3§)
            {
               this.§=J§ = _loc2_;
               break;
            }
            _loc2_++;
         }
      }
   }
}
