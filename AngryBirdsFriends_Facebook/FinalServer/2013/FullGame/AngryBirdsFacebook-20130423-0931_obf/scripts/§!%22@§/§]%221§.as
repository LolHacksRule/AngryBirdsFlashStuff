package §!"@§
{
   import §4y§.§"!`§;
   import §4y§.§0"H§;
   import §4y§.Items;
   import §]!w§.§[!X§;
   
   public class §]"1§
   {
      
      private static var §+!Y§:§]"1§;
      
      public static const §3!=§:String = "RedBird";
      
      public static const §`!N§:String = "NoHat";
      
      public static const §0"2§:String = "10001";
      
      public static const §[!u§:String = "CategoryBirds";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3!=§ = "RedBird";
            while(true)
            {
               §`!N§ = "NoHat";
               loop1:
               while(!_loc2_)
               {
                  §0"2§ = "10001";
                  while(true)
                  {
                     §[!u§ = "CategoryBirds";
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      private var §+?§:Items;
      
      private var §+Y§:§"!`§;
      
      private var §+!<§:Vector.<§[!X§>;
      
      private var §1"A§:§[!X§;
      
      public function §]"1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function get §&"5§() : §]"1§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§+!Y§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     addr41:
                     §+!Y§ = new §]"1§();
                  }
               }
               return §+!Y§;
            }
         }
         §§goto(addr41);
      }
      
      public function get characters() : §"!`§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§+Y§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr41:
                     this.§+Y§ = new §"!`§();
                  }
               }
               return this.§+Y§;
            }
         }
         §§goto(addr41);
      }
      
      public function set avatar(param1:§[!X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1"A§ = param1;
         }
      }
      
      public function get avatar() : §[!X§
      {
         return this.§1"A§;
      }
      
      public function get items() : Items
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§+?§);
            if(!(_loc2_ && this))
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr46:
                     this.§+?§ = new Items();
                  }
               }
               return this.§+?§;
            }
         }
         §§goto(addr46);
      }
      
      public function §>"!§(param1:String) : §0"H§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0"H§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.characters.§]!z§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.§&N§ == param1)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function §@9§(param1:String) : §[!X§
      {
         var _loc2_:§0"H§ = this.§>"!§(param1);
         return new §[!X§(_loc2_);
      }
      
      public function §0!;§() : §[!X§
      {
         return this.§@9§(§3!=§);
      }
      
      public function §!q§(param1:String) : §[!X§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[!X§ = null;
         for each(_loc2_ in this.§5?§)
         {
            if(!(_loc5_ && this))
            {
               if(_loc2_.§=!J§().§&N§ == param1)
               {
                  if(_loc6_ || _loc2_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §5?§() : Vector.<§[!X§>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§0"H§ = null;
         if(_loc5_)
         {
            if(this.§+!<§ == null)
            {
               if(!_loc4_)
               {
                  this.§+!<§ = new Vector.<§[!X§>();
                  addr28:
               }
               for each(_loc1_ in this.characters.§]!z§)
               {
                  if(_loc5_ || _loc1_)
                  {
                     this.§+!<§.push(this.§@9§(_loc1_.§&N§));
                  }
               }
            }
            return this.§+!<§;
         }
         §§goto(addr28);
      }
      
      public function §]t§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§[!X§ = null;
         for each(_loc1_ in this.§5?§)
         {
            if(!_loc5_)
            {
               _loc1_.hide();
            }
         }
      }
   }
}
