package §<!+§
{
   import flash.utils.Dictionary;
   
   public class §2s§
   {
       
      
      private var §[!&§:String = "";
      
      private var mName:String = "";
      
      private var §]!+§:String = "";
      
      private var §1!5§:String = "";
      
      private var §-!L§:String = "";
      
      private var §0§:Array = null;
      
      private var §6!"§:int = 0;
      
      private var §@B§:Array = null;
      
      private var §&@§:Array;
      
      private var §;!Z§:Array;
      
      private var §7!3§:int = 0;
      
      private var §1!A§:Dictionary;
      
      public function §2s§()
      {
         this.§1!A§ = new Dictionary();
         super();
      }
      
      public function §",§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §54§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §,a§(param1:int) : Object
      {
         return this.§&@§[param1];
      }
      
      public function §&A§(param1:int) : String
      {
         return this.§;!Z§[param1];
      }
      
      public function §<!A§(param1:String) : Boolean
      {
         return this.§^!!§().indexOf(param1) != -1;
      }
      
      public function §^!!§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§@B§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§54§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§@B§ = _loc1_;
            return _loc1_;
         }
         return this.§@B§;
      }
      
      public function §,!E§(param1:String) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.pageIndexes.length)
         {
            _loc3_ = this.pageIndexes[_loc2_];
            if(param1.indexOf(_loc3_ + "-") == 0)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §?I§(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:String = param1.substring(0,param1.indexOf("-"));
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc3_ < this.levelsPerPage)
         {
            return _loc2_ + "-" + (_loc3_ + 1);
         }
         _loc4_ = 0;
         while(_loc4_ < this.pageIndexes.length)
         {
            if(this.pageIndexes[_loc4_] == _loc2_)
            {
               if(_loc4_ + 1 < this.pageIndexes.length)
               {
                  return this.pageIndexes[_loc4_ + 1] + "-" + 1;
               }
               break;
            }
            _loc4_++;
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§]!+§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§]!+§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§6!"§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§6!"§ = param1;
      }
      
      public function get §#!Y§() : Array
      {
         return this.§@B§;
      }
      
      public function get §2!J§() : Array
      {
         return this.§&@§;
      }
      
      public function set §2!J§(param1:Array) : void
      {
         this.§&@§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§7!3§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§7!3§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§0§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§0§ = param1;
      }
      
      public function §2!+§(param1:String, param2:String) : void
      {
         this.§1!A§[param1] = param2;
      }
      
      public function §%F§(param1:String) : String
      {
         return this.§1!A§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§;!Z§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§;!Z§ = param1;
      }
      
      public function get §+y§() : String
      {
         return this.§1!5§;
      }
      
      public function set §+y§(param1:String) : void
      {
         this.§1!5§ = param1;
      }
      
      public function get §9!-§() : String
      {
         return this.§-!L§;
      }
      
      public function set §9!-§(param1:String) : void
      {
         this.§-!L§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§[!&§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§[!&§ = param1;
      }
   }
}
