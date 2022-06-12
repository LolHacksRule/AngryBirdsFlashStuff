package §#!H§
{
   import §!"=§.§8S§;
   import §!K§.§<=§;
   import §!K§.Items;
   import §!K§.§]q§;
   
   public class §=!F§
   {
      
      private static var §2"<§:§=!F§;
      
      public static const §+S§:String = "RedBird";
      
      public static const §=!n§:String = "NoHat";
      
      public static const §&!s§:String = "10001";
      
      public static const §]" §:String = "CategoryBirds";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §+S§ = "RedBird";
            while(true)
            {
               §=!n§ = "NoHat";
               loop1:
               while(_loc1_ || §=!F§)
               {
                  §&!s§ = "10001";
                  while(true)
                  {
                     §]" § = "CategoryBirds";
                     if(_loc1_ || _loc2_)
                     {
                        if(_loc1_ || _loc2_)
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
         §§goto(addr71);
      }
      
      private var §&!Z§:Items;
      
      private var §?">§:§<=§;
      
      private var §3"#§:Vector.<§8S§>;
      
      private var §;O§:§8S§;
      
      public function §=!F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function get §;"§() : §=!F§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§2"<§);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || §=!F§)
                  {
                     addr41:
                     §2"<§ = new §=!F§();
                  }
               }
               return §2"<§;
            }
         }
         §§goto(addr41);
      }
      
      public function get characters() : §<=§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§?">§);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr42:
                     this.§?">§ = new §<=§();
                  }
               }
               return this.§?">§;
            }
         }
         §§goto(addr42);
      }
      
      public function set avatar(param1:§8S§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;O§ = param1;
         }
      }
      
      public function get avatar() : §8S§
      {
         return this.§;O§;
      }
      
      public function get items() : Items
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§&!Z§);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     this.§&!Z§ = new Items();
                     addr46:
                     §§push(this.§&!Z§);
                  }
               }
               §§goto(addr46);
            }
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public function §4"3§(param1:String) : §]q§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]q§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.characters.§]!6§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc2_.§;!Y§ == param1)
               {
                  if(_loc5_ || _loc2_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §8!T§(param1:String) : §8S§
      {
         var _loc2_:§]q§ = this.§4"3§(param1);
         return new §8S§(_loc2_);
      }
      
      public function §;!8§() : §8S§
      {
         return this.§8!T§(§+S§);
      }
      
      public function §,"9§(param1:String) : §8S§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8S§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§=u§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || this))
               {
                  break;
               }
               if(_loc2_.§&!h§().§;!Y§ == param1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §=u§() : Vector.<§8S§>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]q§ = null;
         if(!_loc4_)
         {
            if(this.§3"#§ == null)
            {
               if(!_loc4_)
               {
                  this.§3"#§ = new Vector.<§8S§>();
                  addr44:
                  for each(_loc1_ in this.characters.§]!6§)
                  {
                     if(_loc5_)
                     {
                        this.§3"#§.push(this.§8!T§(_loc1_.§;!Y§));
                     }
                  }
               }
               §§goto(addr44);
            }
            return this.§3"#§;
         }
         §§goto(addr44);
      }
      
      public function §5!o§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§8S§ = null;
         for each(_loc1_ in this.§=u§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.hide();
            }
         }
      }
   }
}
