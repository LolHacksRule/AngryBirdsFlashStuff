package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §3U§ extends §-"A§
   {
       
      
      protected var §9!Y§:Number;
      
      protected var §1d§:Number;
      
      protected var §^!$§:Number;
      
      protected var §5"&§:Number;
      
      public function §3U§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param12);
            while(true)
            {
               this.§9!Y§ = param8;
               addr59:
               if(_loc14_ || param1)
               {
                  this.§5"&§ = param11;
                  addr66:
                  if(!(_loc14_ || param1))
                  {
                     loop3:
                     while(true)
                     {
                        if(!_loc13_)
                        {
                           if(!_loc14_)
                           {
                              break;
                           }
                           §§goto(addr59);
                        }
                        addr71:
                        while(true)
                        {
                           this.§^!$§ = param10;
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        this.§1d§ = param9;
                        §§goto(addr71);
                     }
                     addr76:
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      override protected function explodeBeforeRemoving(param1:§;U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  param1.§6!N§(§^!z§().GetPosition().x,§^!z§().GetPosition().y,this.§9!Y§,this.§1d§,this.§^!$§,this.§5"&§);
                  addr38:
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
