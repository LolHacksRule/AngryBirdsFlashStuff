package §0E§
{
   import flash.utils.Dictionary;
   
   public class §<a§
   {
       
      
      private var §8K§:String = "";
      
      private var mName:String = "";
      
      private var §@2§:String = "";
      
      private var §+!e§:String = "";
      
      private var §?l§:String = "";
      
      private var §?'§:Array = null;
      
      private var §<!A§:int = 0;
      
      private var §5"9§:Array = null;
      
      private var §3!P§:Array;
      
      private var §^!L§:Array;
      
      private var § Y§:int = 0;
      
      private var §<!]§:Dictionary;
      
      public function §<a§()
      {
         this.§<!]§ = new Dictionary();
         super();
      }
      
      public function §8!V§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §9S§(param1:String) : Array
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
      
      public function §5!]§(param1:int) : Object
      {
         return this.§3!P§[param1];
      }
      
      public function §7""§(param1:int) : String
      {
         return this.§^!L§[param1];
      }
      
      public function §0!&§(param1:String) : Boolean
      {
         return this.§+""§().indexOf(param1) != -1;
      }
      
      public function §+""§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§5"9§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§9S§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§5"9§ = _loc1_;
            return _loc1_;
         }
         return this.§5"9§;
      }
      
      public function §9W§(param1:String) : int
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
      
      public function §?!K§(param1:String) : String
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
         return this.§@2§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§@2§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§<!A§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§<!A§ = param1;
      }
      
      public function get §<Q§() : Array
      {
         return this.§5"9§;
      }
      
      public function get §,j§() : Array
      {
         return this.§3!P§;
      }
      
      public function set §,j§(param1:Array) : void
      {
         this.§3!P§ = param1;
      }
      
      public function get §"?§() : int
      {
         return this.§ Y§;
      }
      
      public function set §"?§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§ Y§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§?'§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§?'§ = param1;
      }
      
      public function §1!8§(param1:String, param2:String) : void
      {
         this.§<!]§[param1] = param2;
      }
      
      public function §?";§(param1:String) : String
      {
         return this.§<!]§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§^!L§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§^!L§ = param1;
      }
      
      public function get §,"-§() : String
      {
         return this.§+!e§;
      }
      
      public function set §,"-§(param1:String) : void
      {
         this.§+!e§ = param1;
      }
      
      public function get §6y§() : String
      {
         return this.§?l§;
      }
      
      public function set §6y§(param1:String) : void
      {
         this.§?l§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§8K§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§8K§ = param1;
      }
   }
}
