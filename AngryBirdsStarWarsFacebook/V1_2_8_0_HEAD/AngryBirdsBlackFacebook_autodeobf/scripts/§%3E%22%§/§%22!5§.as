package §>"%§
{
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §1"b§.§>l§;
   import §6=§.§@"c§;
   import com.furusystems.dconsole2.DConsole;
   import flash.utils.Dictionary;
   
   public class §"!5§
   {
      
      private static const §["w§:String = "DConsole";
       
      
      private var §="n§:Dictionary;
      
      private var §2#"§:Dictionary;
      
      private var §#!@§:§ "R§;
      
      private var §5"D§:§ "R§;
      
      private var §+"@§:int = 0;
      
      private var §^y§:int = 0;
      
      private var §5"d§:§>l§;
      
      public function §"!5§(param1:DConsole)
      {
         this.§="n§ = new Dictionary(true);
         this.§2#"§ = new Dictionary();
         super();
         this.§5"d§ = param1.§]"z§;
         this.§5"D§ = this.§#!@§ = this.§?!c§(§["w§);
         this.§5"d§.addCallback(§""A§.§+!K§,this.§^#=§);
      }
      
      private function §^#=§(param1:§7",§) : void
      {
         this.§]!N§(param1.data as String);
      }
      
      public function clearAll() : void
      {
         var _loc1_:§ "R§ = null;
         for each(_loc1_ in this.§="n§)
         {
            _loc1_.clear();
         }
      }
      
      public function §8!"§(param1:§@"c§, param2:§ "R§ = null) : void
      {
         if(!param2)
         {
            param2 = this.§#!@§;
         }
         this.§ 0§(param1);
         param2.§8!"§(param1);
      }
      
      public function §=N§(param1:String, param2:Boolean = true) : § "R§
      {
         var _loc3_:§ "R§ = null;
         if(this.§="n§[param1.toLowerCase()] != null)
         {
            return this.§="n§[param1.toLowerCase()];
         }
         if(param2)
         {
            return this.§?!c§(param1);
         }
         throw new ArgumentError("No such log \'" + param1 + "\'");
      }
      
      public function §?!c§(param1:String) : § "R§
      {
         var _loc2_:§ "R§ = new § "R§(param1,this);
         this.§="n§[param1.toLowerCase()] = _loc2_;
         ++this.§^y§;
         this.§5"d§.§#!"§(§""A§.§9#C§,_loc2_,this);
         return _loc2_;
      }
      
      public function §]#&§(param1:String) : § "R§
      {
         var _loc2_:§ "R§ = null;
         if(this.§="n§[param1.toLowerCase()] != null)
         {
            _loc2_ = this.§="n§[param1.toLowerCase()];
            _loc2_.destroy();
            delete this.§="n§[param1.toLowerCase()];
            --this.§^y§;
            this.§5"d§.§#!"§(§""A§.§8"$§,_loc2_,this);
            return _loc2_;
         }
         throw new ArgumentError("No such log: " + param1);
      }
      
      public function §]!N§(param1:String) : § "R§
      {
         if(this.§="n§[param1.toLowerCase()] != null)
         {
            this.§#!@§ = this.§="n§[param1.toLowerCase()];
         }
         this.§5"d§.§#!"§(§""A§.§5!q§,this.§#!@§,this);
         return this.§#!@§;
      }
      
      public function §="Q§(param1:§%"4§) : void
      {
         this.§2#"§[param1.id] = param1;
         ++this.§+"@§;
         this.§&s§();
      }
      
      public function §7!L§(param1:§%"4§) : void
      {
         delete this.§2#"§[param1.id];
         --this.§+"@§;
         this.§&s§();
      }
      
      public function §[!C§() : void
      {
         this.§2#"§ = new Dictionary();
         this.§+"@§ = 0;
         this.§&s§();
      }
      
      private function §&s§() : void
      {
         var _loc1_:§ "R§ = null;
         var _loc2_:§@"c§ = null;
         for each(_loc1_ in this.§="n§)
         {
            for each(_loc2_ in _loc1_.§0!G§)
            {
               this.§ 0§(_loc2_);
            }
            this.§5"d§.§#!"§(§""A§.§@!<§,_loc1_,this);
         }
      }
      
      private function § 0§(param1:§@"c§) : void
      {
         var _loc2_:§%"4§ = null;
         var _loc3_:* = false;
         param1.visible = true;
         for each(_loc2_ in this.§2#"§)
         {
            _loc3_ = true;
            if(_loc2_.§8#=§ != "")
            {
               _loc3_ = param1.text.toLowerCase().indexOf(_loc2_.§8#=§.toLowerCase()) > -1;
            }
            if(_loc2_.tag != "")
            {
               _loc3_ = param1.tag.toLowerCase() == _loc2_.tag.toLowerCase();
            }
            param1.visible = _loc3_;
         }
      }
      
      public function get §^"%§() : § "R§
      {
         return this.§#!@§;
      }
      
      public function get §@V§() : int
      {
         return this.§+"@§;
      }
      
      public function get §["2§() : § "R§
      {
         return this.§5"D§;
      }
      
      public function get §9!Y§() : int
      {
         return this.§^y§;
      }
      
      public function §[!x§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^"%§.length)
         {
            if(this.§^"%§.§0!G§[_loc2_].text.toLowerCase().indexOf(param1.toLowerCase()) > -1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §;#R§() : Vector.<String>
      {
         var _loc2_:§ "R§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§="n§)
         {
            if(_loc2_ != this.§5"D§)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.sort(this.§^"X§);
         _loc1_.unshift(this.§5"D§.name);
         return _loc1_;
      }
      
      private function §^"X§(param1:String, param2:String) : int
      {
         if(param1 > param2)
         {
            return 1;
         }
         if(param1 < param2)
         {
            return -1;
         }
         return 0;
      }
      
      public function §7!<§(param1:String) : Boolean
      {
         return this.§2#"§[param1] != null;
      }
      
      public function §<"p§(param1:String) : Boolean
      {
         return this.§2#"§[param1] != null;
      }
      
      public function §+!k§(param1:§%"4§) : Boolean
      {
         return this.§2#"§[param1.id] != null;
      }
   }
}
